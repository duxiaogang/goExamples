package main

import (
	"github.com/anaminus/luasyntax/go/parser"
	"github.com/anaminus/luasyntax/go/tree"
	"math"
	"os"
	"strings"
)

// 原API:			Summon(type, name)
// 提交给LLM的API:	Summon(type, name, type_desc)
//
// 注意：_desc可以有多个，但只能放在参数列表的最后
//

type APICorrection interface {
	//argIndex从0计数
	ArgCorrection(api string, argIndex int, argName, argValue, argDesc string) string
}

type noCorrection struct{}

func (*noCorrection) ArgCorrection(api string, argIndex int, argName, argValue, argDesc string) string {
	return argValue
}

type simpleCorrection struct{}

func (*simpleCorrection) ArgCorrection(api string, argIndex int, argName, argValue, argDesc string) string {
	//argValue = strings.Trim(argValue, "\"")
	//return "\"(经过修正的)" + argValue + "\""
	return "(经过修正的)" + argValue
}

type ArgInfo struct {
	argIndex  int
	argName   string
	descIndex int
}

type rewriter struct {
	funcMap    map[string][]ArgInfo
	correction APICorrection
}

func NewRewriter(correction APICorrection) *rewriter {
	rw := &rewriter{}
	rw.funcMap = make(map[string][]ArgInfo)
	rw.correction = correction
	return rw
}

func (r *rewriter) AddFunc(funcName string, args []ArgInfo) {
	//todo: 合法性检查
	r.funcMap[funcName] = args
}

func (r *rewriter) Visit(node tree.Node) tree.Visitor {
	switch node := node.(type) {
	case *tree.CallExpr:
		//function
		f, ok := node.Value.(*tree.VariableExpr)
		if !ok {
			panic("1")
		}
		//f.NameToken.Bytes = []byte("F")
		funcName := string(f.NameToken.Bytes)
		argInfos, ok := r.funcMap[funcName]
		if !ok {
			return r
		}
		//args
		as, ok := node.Args.(*tree.ListArgs)
		if !ok {
			panic("2")
		}
		firstDescIndex := math.MaxInt
		for _, argInfo := range argInfos {
			if argInfo.descIndex < firstDescIndex {
				firstDescIndex = argInfo.descIndex
			}
			//argValue
			it := as.Values.Items[argInfo.argIndex] //todo: check?
			ve, ok := it.(*tree.StringExpr)
			if !ok {
				continue
			}
			argValue := string(ve.StringToken.Bytes)
			//argDesc
			it = as.Values.Items[argInfo.descIndex] //todo: check?
			de, ok := it.(*tree.StringExpr)
			if !ok {
				//todo: ???
				continue
			}
			argDesc := string(de.StringToken.Bytes)
			//correction
			argValue = strings.Trim(argValue, "\"") //fixme: 需要吗？
			argDesc = strings.Trim(argDesc, "\"")
			newArgValue := r.correction.ArgCorrection(funcName, argInfo.argIndex, argInfo.argName, argValue, argDesc)
			ve.StringToken.Bytes = []byte("\"" + newArgValue + "\"")
			//de.StringToken.Bytes = []byte("___WILL_DELETE___")
		}
		if firstDescIndex < math.MaxInt {
			as.Values.Items = as.Values.Items[:firstDescIndex]
			as.Values.Seps = as.Values.Seps[:firstDescIndex-1]
		}
		return r
	default:
		return r
	}
}

func main() {
	ast, err := parser.ParseFile("", `local M = {}

function M.cb()
	BBPut("当前目标", "1")
	BBPut("下一个敌人", "牛魔王")
	BBGet("好朋友")

	if IsReached("秦皇岛",         "到达秦皇岛之后") then
		Move("北戴河出口", "需要往北戴河出口走")
	end

	if IsReached("北戴河",
"到达北戴河之后")        then
		Patrol("沙滩", "沿着沙滩巡逻即可")
	end

	if isTrue(get(0, "hello"), "world", 1, set(1, "hi")) then
		print(get(0, "hello"), "world", 1, set(1, "hi"))
	end
end

return M
`)
	if err != nil {
		panic(err)
	}

	rw := NewRewriter(&simpleCorrection{})
	rw.AddFunc("IsReached", []ArgInfo{{0, "destination", 1}})
	rw.AddFunc("Move", []ArgInfo{{0, "destination", 1}})
	rw.AddFunc("Patrol", []ArgInfo{{0, "path", 1}})
	tree.Walk(rw, ast)

	//format.Minify(ast)
	//tree.FixAdjoinedTokens(ast)
	//tree.FixTokenOffsets(ast, 0)

	ast.WriteTo(os.Stdout)
}

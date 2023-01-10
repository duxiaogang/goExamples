package main

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
)

func greet() {
	var msg = "Hello World!"
	fmt.Println(msg)
}

func main() {
	srcCode := `
package hello

import "fmt"

func greet() {
	var msg = "Hello World!"
	fmt.Println(msg)
}
`

	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "", srcCode, 0)
	if err != nil {
		fmt.Println("err = ", err)
	}
	//ast.Print(fset, f)
	ast.Inspect(f, func(n ast.Node) bool {
		ast.Print(fset, n)
		return true
	})
}

package funcs

import (
	"github.com/duxiaogang/goExamples/oocHotfix/app/ooc"
	"github.com/petermattis/goid"
	_ "unsafe"
)

func AsyncPreemptOOC()

//go:linkname asyncPreempt2 runtime.asyncPreempt2
func asyncPreempt2()

//go:nosplit
func asyncPreempt2Wrapper() {
	//fixme: 多一次call，stack多8bytes，是有隐患的
	asyncPreempt2()
}

//go:nosplit
func checkOOC() int {
	goId := goid.Get() //fixme: call more_stack? yes!
	if ooc.IsTimeout(goId) {
		return 1
	}
	return 0
}

func oocPanic() {
	panic("OOC!")
}

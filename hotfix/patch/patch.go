package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/hotfix/app"
)

func ReplacedFunc1() int {
	return 2
}

type PatchInterface interface {
	Patch()
	Reset()
}

type patch struct {
}

func (p patch) Patch() {
	fmt.Printf("patch.Patch(), the address of app.GlobalFunc1 = %p\n", app.GlobalFunc1)
	fmt.Printf("patch.Patch(), 1, app.GlobalFunc1() = %d\n", app.GlobalFunc1())
	gomonkey.ApplyFunc(app.GlobalFunc1, ReplacedFunc1)
	fmt.Printf("patch.Patch(), 2, app.GlobalFunc1() = %d\n", app.GlobalFunc1())
}

func (p patch) Reset() {
	fmt.Printf("patch.Reset(), app.GlobalFunc1() = %d\n", app.GlobalFunc1())
}

var Patch patch

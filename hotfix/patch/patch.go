package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch/lookup"
	"reflect"
)

func ReplacedFunc1() int {
	return 2
}

type PatchInterface interface {
	Patch()
}

type patch struct {
}

func (p patch) Patch() {
	fmt.Printf("patch.Patch(), address of app.GlobalFunc1 = %p\n", app.GlobalFunc1)

	target, err := lookup.MakeValueByFunctionName(app.GlobalFunc1, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc1")
	if err != nil {
		fmt.Printf("patch.Patch(), MakeValueByFunctionName error, err = %v\n", err)
		return
	}
	fmt.Printf("patch.Patch(), target = 0x%08x\n", target)
	gomonkey.NewPatches().ApplyCore(target, reflect.ValueOf(ReplacedFunc1))
}

var Patch patch

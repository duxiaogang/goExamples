package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch"
	"github.com/duxiaogang/goExamples/hotfix/patch/lookup"
	"reflect"
	_ "unsafe"
)

var _ patch.PatchInterface = (*patch2)(nil)

type patch2 struct {
}

func ReplacedFunc1() string {
	return "patch2's ReplacedFunc1()"
}

func ReplacedFunc2() string {
	return "patch2's ReplacedFunc2()"
}

func ReplacedFunc3() string {
	return "patch2's ReplacedFunc3()"
}

//go:linkname privateVar1 github.com/duxiaogang/goExamples/hotfix/app.privateVar1
var privateVar1 int

func (p patch2) Patch() (any, error) {
	patched := gomonkey.NewPatches()

	//replace GlobalFunc1
	target, err := lookup.MakeValueByFunctionName(app.GlobalFunc1, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(ReplacedFunc1))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(ReplacedFunc1))

	//DONT replace GlobalFunc2

	//replace GlobalFunc3
	target, err = lookup.MakeValueByFunctionName(app.GlobalFunc3, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc3")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(ReplacedFunc3))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc3), reflect.ValueOf(ReplacedFunc3))

	//replace GlobalVar1
	patched.ApplyGlobalVar(&app.GlobalVar1, 2)

	//replace privateVar1
	patched.ApplyGlobalVar(&privateVar1, 2)

	return patched, nil
}

func (p patch2) Reset(patched any) error {
	patches, ok := patched.(*gomonkey.Patches)
	if !ok {
		return fmt.Errorf("patch2.Reset(), patched has wrong type(%T), not gomonkey.Patches", patched)
	}
	patches.Reset()
	return nil
}

var Patch patch2

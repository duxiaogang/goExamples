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

//go:linkname privateFunc1 github.com/duxiaogang/goExamples/hotfix/app.privateFunc1
func privateFunc1() string
func replacedPrivateFunc1() string {
	return "patch2's replacedPrivateFunc1()"
}

//go:linkname privateFunc2 github.com/duxiaogang/goExamples/hotfix/app.privateFunc2
func privateFunc2() string
func replacedPrivateFunc2() string {
	return "patch2's replacedPrivateFunc2()"
}

//go:linkname privateFunc3 github.com/duxiaogang/goExamples/hotfix/app.privateFunc3
func privateFunc3() string
func replacedPrivateFunc3() string {
	return "patch2's replacedPrivateFunc3()"
}

func (p patch2) Patch() (any, error) {
	patched := gomonkey.NewPatches()

	//replace GlobalFunc1
	target, err := lookup.MakeValueByFunctionName(app.GlobalFunc1, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(ReplacedFunc1))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(ReplacedFunc1))

	//NOT replace GlobalFunc2

	//replace GlobalFunc3
	target, err = lookup.MakeValueByFunctionName(app.GlobalFunc3, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc3")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(ReplacedFunc3))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc3), reflect.ValueOf(ReplacedFunc3))

	//replace privateFunc1
	target, err = lookup.MakeValueByFunctionName(privateFunc1, "github.com/duxiaogang/goExamples/hotfix/app.privateFunc1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedPrivateFunc1))
	patched.ApplyCore(reflect.ValueOf(privateFunc1), reflect.ValueOf(replacedPrivateFunc1))

	//DONT replace privateFunc2

	//replace privateFunc3
	target, err = lookup.MakeValueByFunctionName(privateFunc3, "github.com/duxiaogang/goExamples/hotfix/app.privateFunc3")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedPrivateFunc3))
	patched.ApplyCore(reflect.ValueOf(privateFunc3), reflect.ValueOf(replacedPrivateFunc3))

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

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

var _ patch.PatchInterface = (*patch1)(nil)

type patch1 struct {
}

func replacedFunc1() string {
	return "patch1's replacedFunc1()"
}

func replacedFunc2() string {
	return "patch1's replacedFunc2()"
}

func replacedFunc3() string {
	return "patch1's replacedFunc3()"
}

//go:linkname privateFunc1 github.com/duxiaogang/goExamples/hotfix/app.privateFunc1
func privateFunc1() string
func replacedPrivateFunc1() string {
	return "patch1's replacedPrivateFunc1()"
}

//go:linkname privateFunc2 github.com/duxiaogang/goExamples/hotfix/app.privateFunc2
func privateFunc2() string
func replacedPrivateFunc2() string {
	return "patch1's replacedPrivateFunc2()"
}

//go:linkname privateFunc3 github.com/duxiaogang/goExamples/hotfix/app.privateFunc3
func privateFunc3() string
func replacedPrivateFunc3() string {
	return "patch1's replacedPrivateFunc3()"
}

func (p patch1) Patch() (any, error) {
	patched := gomonkey.NewPatches()

	//replace GlobalFunc1
	target, err := lookup.MakeValueByFunctionName(app.GlobalFunc1, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedFunc1))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(replacedFunc1))

	//replace GlobalFunc2
	target, err = lookup.MakeValueByFunctionName(app.GlobalFunc2, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc2")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedFunc2))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc2), reflect.ValueOf(replacedFunc2))

	//DONT replace GlobalFunc3

	//replace privateFunc1
	target, err = lookup.MakeValueByFunctionName(privateFunc1, "github.com/duxiaogang/goExamples/hotfix/app.privateFunc1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedPrivateFunc1))
	patched.ApplyCore(reflect.ValueOf(privateFunc1), reflect.ValueOf(replacedPrivateFunc1))

	//replace privateFunc2
	target, err = lookup.MakeValueByFunctionName(privateFunc2, "github.com/duxiaogang/goExamples/hotfix/app.privateFunc2")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedPrivateFunc2))
	patched.ApplyCore(reflect.ValueOf(privateFunc2), reflect.ValueOf(replacedPrivateFunc2))

	//DONT replace privateFunc3

	return patched, nil
}

func (p patch1) Reset(patched any) error {
	patches, ok := patched.(*gomonkey.Patches)
	if !ok {
		return fmt.Errorf("patch1.Reset(), patched has wrong type(%T), not gomonkey.Patches", patched)
	}
	patches.Reset()
	return nil
}

var Patch patch1

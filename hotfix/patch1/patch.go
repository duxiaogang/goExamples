package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch"
	"github.com/duxiaogang/goExamples/hotfix/patch/lookup"
	"reflect"
)

var _ patch.PatchInterface = &patch1{} //todo:

type patch1 struct {
}

func ReplacedFunc1() string {
	return "patch1's ReplacedFunc1()"
}

func ReplacedFunc2() string {
	return "patch1's ReplacedFunc2()"
}

func ReplacedFunc3() string {
	return "patch1's ReplacedFunc3()"
}

func (p patch1) Patch() (any, error) {
	patched := gomonkey.NewPatches()

	//replace GlobalFunc1
	target, err := lookup.MakeValueByFunctionName(app.GlobalFunc1, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(ReplacedFunc1))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(ReplacedFunc1))

	//replace GlobalFunc2
	target, err = lookup.MakeValueByFunctionName(app.GlobalFunc2, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc2")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(ReplacedFunc2))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc2), reflect.ValueOf(ReplacedFunc2))

	//NOT replace GlobalFunc3

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

package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/oocHotfix/app"
	"github.com/duxiaogang/goExamples/oocHotfix/patch"
	"github.com/duxiaogang/goExamples/oocHotfix/patch/lookup"
	"reflect"
	_ "unsafe"
)

var _ patch.PatchInterface = (*patch1)(nil)

type patch1 struct {
}

func replacedFunc1() string {
	return "patch1's replacedFunc1()"
}

func (p patch1) Patch() (any, error) {
	patched := gomonkey.NewPatches()

	//replace GlobalFunc1
	target, err := lookup.MakeValueByFunctionName(app.GlobalFunc1, "github.com/duxiaogang/goExamples/oocHotfix/app.GlobalFunc1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedFunc1))
	patched.ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(replacedFunc1))

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

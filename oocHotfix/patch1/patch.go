package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/oocHotfix/patch"
	"github.com/duxiaogang/goExamples/oocHotfix/patch/lookup"
	"github.com/duxiaogang/goExamples/oocHotfix/patch1/funcs"
	"reflect"
	_ "unsafe"
)

var _ patch.PatchInterface = (*patch1)(nil)

type patch1 struct {
}

func asyncPreempt() {
}

func (p patch1) Patch() (any, error) {
	patched := gomonkey.NewPatches()

	//replace asyncPreempt
	target, err := lookup.MakeValueByFunctionName(asyncPreempt, "runtime.asyncPreempt.abi0")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(funcs.AsyncPreemptOOC)) //todo: abi0?
	//patched.ApplyCore(reflect.ValueOf(asyncPreempt), reflect.ValueOf(funcs.AsyncPreemptOOC))

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

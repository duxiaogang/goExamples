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

func replacedObject1Method1(o *app.Object1) string {
	return "patch1's replacedObject1Method1()"
}

//go:linkname object1PrivateMethod1 github.com/duxiaogang/goExamples/hotfix/app.(*Object1).privateMethod1
func object1PrivateMethod1(o *app.Object1) string
func replacedObject1PrivateMethod1(o *app.Object1) string {
	return "patch1's replacedObject1PrivateMethod1()"
}

//go:linkname createClosure1func1 github.com/duxiaogang/goExamples/hotfix/app.CreateClosure1.func1
func createClosure1func1() string
func replacedCreateClosure1func1() string {
	return "patch1's replacedCreateClosure1func1()"
}

//func replacedCreateClosure1(i int) func() string {
//	return func() string {
//		return fmt.Sprintf("patch1's replacedCreateClosure1func1(), i=%d", i)
//	}
//}

//go:linkname privateVar1 github.com/duxiaogang/goExamples/hotfix/app.privateVar1
var privateVar1 int

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

	//replace Object1.Method1
	target, err = lookup.MakeValueByFunctionName((*app.Object1).Method1, "github.com/duxiaogang/goExamples/hotfix/app.(*Object1).Method1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedObject1Method1))
	patched.ApplyCore(reflect.ValueOf((*app.Object1).Method1), reflect.ValueOf(replacedObject1Method1))

	//replace Object1.privateMethod1
	target, err = lookup.MakeValueByFunctionName(object1PrivateMethod1, "github.com/duxiaogang/goExamples/hotfix/app.(*Object1).privateMethod1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedObject1PrivateMethod1))
	patched.ApplyCore(reflect.ValueOf(object1PrivateMethod1), reflect.ValueOf(replacedObject1PrivateMethod1))

	//replace CreateClosure1.func1
	target, err = lookup.MakeValueByFunctionName(createClosure1func1, "github.com/duxiaogang/goExamples/hotfix/app.CreateClosure1.func1")
	if err != nil {
		return nil, err
	}
	patched.ApplyCore(target, reflect.ValueOf(replacedCreateClosure1func1))
	patched.ApplyCore(reflect.ValueOf(createClosure1func1), reflect.ValueOf(replacedCreateClosure1func1))

	//replace GlobalVar1
	patched.ApplyGlobalVar(&app.GlobalVar1, 1)

	//replace privateVar1
	patched.ApplyGlobalVar(&privateVar1, 1)

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

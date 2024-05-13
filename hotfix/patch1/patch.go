package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch"
	"unsafe"
	_ "unsafe"
)

var _ patch.PatchInterface = (*patch1)(nil)

type patch1 struct {
}

func replacedFunc1() string {
	return "patch1's replacedFunc1()|" + app.GlobalFunc2()
	//return "patch1's replacedFunc1()|" + replacedFunc2()
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

func (p patch1) Patch(soPath string) (any, error) {
	f1 := app.GlobalFunc1
	f2 := app.GlobalFunc2
	fmt.Printf("patch1.Patch(), app.GlobalFunc1=0x%x, app.GlobalFunc2=0x%x\n", **(**uintptr)(unsafe.Pointer(&f1)), **(**uintptr)(unsafe.Pointer(&f2)))

	patched := gomonkey.NewPatches()

	//replace GlobalFunc1
	patch.ApplyExeAndSo(patched, app.GlobalFunc1, soPath, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc1", replacedFunc1)

	//replace GlobalFunc2
	patch.ApplyExeAndSo(patched, app.GlobalFunc2, soPath, "github.com/duxiaogang/goExamples/hotfix/app.GlobalFunc2", replacedFunc2)

	//DONT replace GlobalFunc3

	//replace privateFunc1
	patch.ApplyExeAndSo(patched, privateFunc1, soPath, "github.com/duxiaogang/goExamples/hotfix/app.privateFunc1", replacedPrivateFunc1)

	//replace Object1.Method1
	patch.ApplyExeAndSo(patched, (*app.Object1).Method1, soPath, "github.com/duxiaogang/goExamples/hotfix/app.(*Object1).Method1", replacedObject1Method1)

	//replace Object1.privateMethod1
	patch.ApplyExeAndSo(patched, object1PrivateMethod1, soPath, "github.com/duxiaogang/goExamples/hotfix/app.(*Object1).privateMethod1", replacedObject1PrivateMethod1)

	//replace CreateClosure1.func1
	patch.ApplyExeAndSo(patched, createClosure1func1, soPath, "github.com/duxiaogang/goExamples/hotfix/app.CreateClosure1.func1", replacedCreateClosure1func1)

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

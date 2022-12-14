package main

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"os"
	"plugin"
	"reflect"
)

//func MainFunc1() int {
//	return 3
//}

type PatchInterface interface {
	Patch(apply func(target, double reflect.Value))
	Reset()
}

func main() {
	fmt.Printf("main(), address of app.GlobalFunc1 = %p\n", app.GlobalFunc1)
	fmt.Printf("main(), 1, app.GlobalFunc1() = %d\n", app.GlobalFunc1())

	//gomonkey.NewPatches().ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(MainFunc1))
	//fmt.Printf("main(), 2, app.GlobalFunc1() = %d\n", app.GlobalFunc1())

	plug, err := plugin.Open("./patch/patch.so")
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	_ = plug

	symPatch, err := plug.Lookup("Patch")
	if err != nil {
		fmt.Println(err)
		os.Exit(2)
	}

	patch, ok := symPatch.(PatchInterface)
	if !ok {
		fmt.Println("patch not implement PatchInterface")
		os.Exit(3)
	}

	patch.Patch(func(target, double reflect.Value) { gomonkey.NewPatches().ApplyCore(target, double) })
	//patch.Patch(func(target, double reflect.Value) {
	//	//gomonkey.NewPatches().ApplyCore(target, reflect.ValueOf(MainFunc1))
	//	gomonkey.NewPatches().ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(MainFunc1))
	//})

	//gomonkey.NewPatches().ApplyCore(reflect.ValueOf(app.GlobalFunc1), reflect.ValueOf(MainFunc1))
	fmt.Printf("main(), 3, app.GlobalFunc1() = %d\n", app.GlobalFunc1())
}

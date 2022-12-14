package main

import (
	"fmt"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"os"
	"plugin"
)

type PatchInterface interface {
	Patch()
}

func main() {
	fmt.Printf("main(), address of app.GlobalFunc1 = %p\n", app.GlobalFunc1)
	fmt.Printf("main(), 1, app.GlobalFunc1() = %d\n", app.GlobalFunc1())

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
		fmt.Println("main(), patch do not implement PatchInterface")
		os.Exit(3)
	}

	patch.Patch()

	fmt.Printf("main(), 2, app.GlobalFunc1() = %d\n", app.GlobalFunc1())
}

package main

import (
	"fmt"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch"
	"os"
)

func test(desc string, f func() string, o *app.Object1) {
	fmt.Printf("main(), %20s, %50s, %50s, %50s\n", desc, app.GlobalFunc1(), app.GlobalFunc2(), app.GlobalFunc3())
	fmt.Printf("        %20s  %50s, %50s, %50s\n", "", app.CallPrivateFunc1(), app.CallPrivateFunc2(), app.CallPrivateFunc3())
	fmt.Printf("        %20s  %50s\n", "", f())
	fmt.Printf("        %20s  %50s\n", "", o.Method1())
	fmt.Printf("        %20s  %50s\n", "", o.CallPrivateMethod1())
	fmt.Printf("\n")
}

func main() {
	c1 := app.CreateClosure1(1)
	o := &app.Object1{}

	test("before patch", c1, o)

	pt := &patch.PatchTool{}
	err := pt.DoPatch("./patch1/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch1\") error, err = %s\n", err)
		os.Exit(1)
	}
	test("after patch1", c1, o)

	err = pt.DoPatch("./patch2/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch2\") error, err = %s\n", err)
		os.Exit(2)
	}
	test("after patch2", c1, o)

	pt.Reset()
	test("after reset", c1, o)
}

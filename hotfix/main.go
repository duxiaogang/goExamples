package main

import (
	"fmt"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch"
	"os"
)

func dump(desc string, o *app.Object1, f func() string) {
	fmt.Printf("main(), %20s, %50s, %50s, %50s\n", desc, app.GlobalFunc1(), app.GlobalFunc2(), app.GlobalFunc3())
	fmt.Printf("        %20s  %50s\n", "", app.CallPrivateFunc1())
	fmt.Printf("        %20s  %50s\n", "", o.Method1())
	fmt.Printf("        %20s  %50s\n", "", o.CallPrivateMethod1())
	fmt.Printf("        %20s  %50s\n", "", f())
	fmt.Printf("        %20s  %50s, %50s\n", "", fmt.Sprintf("app.GlobalVar1=%d", app.GlobalVar1), fmt.Sprintf("app.privateVar1=%d", app.GetPrivateVar1()))
	fmt.Printf("\n")
	fmt.Printf("\n")
	fmt.Printf("\n")
}

func main() {
	c1 := app.CreateClosure1(1)
	o := &app.Object1{}

	dump("before patch", o, c1)

	pt := &patch.PatchTool{}
	err := pt.DoPatch("./patch1/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch1\") error, err = %s\n", err)
		os.Exit(1)
	}
	dump("after patch1", o, c1)

	err = pt.DoPatch("./patch2/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch2\") error, err = %s\n", err)
		os.Exit(2)
	}
	dump("after patch2", o, c1)

	pt.Reset()
	dump("after reset", o, c1)
}

package main

import (
	"fmt"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch"
	"os"
)

func test(desc string) {
	fmt.Printf("main(), %20s, %40s, %40s, %40s\n", desc, app.GlobalFunc1(), app.GlobalFunc2(), app.GlobalFunc3())
	fmt.Printf("        %20s  %40s, %40s, %40s\n", "", app.CallPrivateFunc1(), app.CallPrivateFunc2(), app.CallPrivateFunc3())
	fmt.Printf("\n")
}

func main() {
	test("before patch")

	pt := &patch.PatchTool{}
	err := pt.DoPatch("./patch1/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch1\") error, err = %s\n", err)
		os.Exit(1)
	}
	test("after patch1")

	err = pt.DoPatch("./patch2/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch2\") error, err = %s\n", err)
		os.Exit(2)
	}
	test("after patch2")

	pt.Reset()
	test("after reset")
}

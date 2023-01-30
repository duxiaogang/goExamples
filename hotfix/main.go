package main

import (
	"fmt"
	"github.com/duxiaogang/goExamples/hotfix/app"
	"github.com/duxiaogang/goExamples/hotfix/patch"
	"os"
)

func main() {
	fmt.Printf("main(), before patch, \tapp.GlobalFunc1()=\"%s\", \tapp.GlobalFunc2()=\"%s\", \tapp.GlobalFunc3()=\"%s\"\n", app.GlobalFunc1(), app.GlobalFunc2(), app.GlobalFunc3())

	pt := &patch.PatchTool{}
	err := pt.DoPatch("./patch1/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch1\") error, err = %s\n", err)
		os.Exit(1)
	}
	fmt.Printf("main(), after patch1, \tapp.GlobalFunc1()=\"%s\", \tapp.GlobalFunc2()=\"%s\", \tapp.GlobalFunc3()=\"%s\"\n", app.GlobalFunc1(), app.GlobalFunc2(), app.GlobalFunc3())

	err = pt.DoPatch("./patch2/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch2\") error, err = %s\n", err)
		os.Exit(2)
	}
	fmt.Printf("main(), after patch2, \tapp.GlobalFunc1()=\"%s\", \tapp.GlobalFunc2()=\"%s\", \tapp.GlobalFunc3()=\"%s\"\n", app.GlobalFunc1(), app.GlobalFunc2(), app.GlobalFunc3())

	pt.Reset()
	fmt.Printf("main(), after reset, \tapp.GlobalFunc1()=\"%s\", \tapp.GlobalFunc2()=\"%s\", \tapp.GlobalFunc3()=\"%s\"\n", app.GlobalFunc1(), app.GlobalFunc2(), app.GlobalFunc3())
}

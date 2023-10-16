package main

import (
	"fmt"
	"github.com/duxiaogang/goExamples/oocHotfix/app"
	"github.com/duxiaogang/goExamples/oocHotfix/patch"
	"os"
)

func dump(desc string) {
	fmt.Printf("main(), %20s, %50s\n", desc, app.GlobalFunc1())
	fmt.Printf("\n")
	fmt.Printf("\n")
	fmt.Printf("\n")
}

func main() {
	dump("before patch")

	pt := &patch.PatchTool{}
	err := pt.DoPatch("./patch1/patch.so")
	if err != nil {
		fmt.Printf("main(), DoPatch(\"patch1\") error, err = %s\n", err)
		os.Exit(1)
	}
	dump("after patch1")

	pt.Reset()
	dump("after reset")
}

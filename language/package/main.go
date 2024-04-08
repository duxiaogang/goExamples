package main

import (
	"fmt"
	"github.com/duxiaogang/goExamples/language/package/multiInit"
)

func main() {
	i1 := multiInit.Object1{}
	i2 := multiInit.Object2{}
	i := i1.I + i2.I
	fmt.Printf("main, i=%d", i)
}

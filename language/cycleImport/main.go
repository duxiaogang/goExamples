package main

import (
	"github.com/duxiaogang/goExamples/language/cycleImport/pckA"
	"github.com/duxiaogang/goExamples/language/cycleImport/pckB"
)

func main() {
	a := &pckA.A{B: &pckB.B{}}
	a.Print()
}

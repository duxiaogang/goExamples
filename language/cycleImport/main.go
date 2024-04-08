package main

import (
	"github.com/duxiaogang/goExamples/language/cycleImport/pckA"
	"github.com/duxiaogang/goExamples/language/cycleImport/pckB"
)

func main() {
	//a := &pckA.A{B: &pckB.B{}}
	//a.Print()

	a := &pckA.A{}
	b := &pckB.B{}
	a.B = b
	b.A = a
	a.Print()
	b.Print()
}

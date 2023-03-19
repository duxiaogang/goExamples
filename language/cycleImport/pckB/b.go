package pckB

import (
	"fmt"
	"github.com/duxiaogang/goExamples/language/cycleImport/pckCommon"
)

type B struct {
	A pckCommon.CommonInf
}

func (t *B) Name() string {
	return "B"
}

func (t *B) Print() {
	fmt.Printf("I'm %s, and I have a %s\n", t.Name(), t.A.Name())
}

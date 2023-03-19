package pckA

import (
	"fmt"
	"github.com/duxiaogang/goExamples/language/cycleImport/pckCommon"
)

type A struct {
	B pckCommon.CommonInf
}

func (t *A) Name() string {
	return "A"
}

func (t *A) Print() {
	fmt.Printf("I'm %s, and I have a %s\n", t.Name(), t.B.Name())
}

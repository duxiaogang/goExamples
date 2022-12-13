package first

import (
	"fmt"
	"github.com/agiledragon/gomonkey/v2"
	"testing"
)

func F1() {
	fmt.Println("F1")
}

func F2() {
	fmt.Println("F2")
}

func TestHotfix2(t *testing.T) {
	F1()
	p := gomonkey.ApplyFunc(F1, F2)
	defer p.Reset()
	F1()
}

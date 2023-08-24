package main

import (
	"fmt"
	"strings"
)

func f1() {
	b := strings.Builder{}
	b.WriteString("hello")
	b.WriteString(", ")
	b.WriteString("world")
	fmt.Println(b.String())
}

func f2() {
	tmp := `hi
%s %d
"""
%s %d
"""
hello
`
	fmt.Printf(tmp, "abc", 123, "cde", 456)
}

func main() {
	f2()

	s := "1,2,3,"
	fmt.Println(strings.Trim(s, ","))
}

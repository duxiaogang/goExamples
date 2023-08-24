package main

import (
	"fmt"
	"io"
)

func main() {
	m := make(map[string]any)
	//var x any = nil
	x := m["NotExist"]
	if x != nil {
		fmt.Println(x)
	}
	if r, ok := x.(io.Reader); ok {
		fmt.Println(r)
	}
}

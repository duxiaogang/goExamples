package main

import (
	"fmt"
	"unsafe"
)

func f1(m map[int]string) {
	m[11] = "aa"
	m[12] = "ab"
	m[13] = "ac"
}

func main() {
	m := map[int]string{}
	m[1] = "a"
	m[2] = "b"
	m[3] = "c"

	f1(m)

	for k, v := range m {
		fmt.Println(k, v)
	}

	fmt.Println("size:", unsafe.Sizeof(m))
}

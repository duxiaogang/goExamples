package main

import (
	"fmt"
	"strings"
)

func main() {
	s := "go1.19.8"
	ps := strings.Split(s, ".")
	fmt.Println(len(ps))
	fmt.Println(ps[0])
	fmt.Println(ps[1])
	fmt.Println(ps[2])
}

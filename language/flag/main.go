package main

import (
	"flag"
	"fmt"
)

func main() {
	name := flag.String("name", "lpc", "go flag test")
	flag.Parse()
	fmt.Println("hello, ", *name)
}

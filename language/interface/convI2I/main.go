package main

import "fmt"

type coder interface {
	code()
	run()
}

type runner interface {
	run()
}

type Gopher struct {
	language string
}

func (g Gopher) code() {

}

func (g Gopher) run() {

}

func main() {
	var c coder = Gopher{}
	var r runner
	r = c
	//c = r	//这样是不行的，接口转换，并不是后面的类型转换
	fmt.Println(c, r)
}

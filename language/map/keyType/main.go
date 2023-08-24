package main

type t1 struct {
	v1 int
	v2 float64
	//以下注释掉的类型都不能作为key
	//v3  func()
	//v4 []int
	v5 chan int
	v6 any
	//v7 map[any]any
}

func main() {
	m := make(map[t1]string, 10)
	o1 := t1{}
	m[o1] = "o1"
}

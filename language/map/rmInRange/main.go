package main

import "fmt"

func main() {
	m := make(map[int]int)
	for i := 0; i < 10*1000*1000; i++ {
		m[i] = i
	}
	fmt.Println(len(m))

	var i64 int64 = 0
	for k, v := range m {
		//fmt.Println(k, v)
		i64 += int64(v)
		delete(m, k)
	}
	fmt.Println(i64)
}

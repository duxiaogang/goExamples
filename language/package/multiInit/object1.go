package multiInit

import "fmt"

type Object1 struct {
	I int32
}

func init() {
	fmt.Println("object1's init()")
}

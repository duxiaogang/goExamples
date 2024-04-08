package multiInit

import "fmt"

type Object2 struct {
	I int32
}

func init() {
	fmt.Println("object2's init()")
}

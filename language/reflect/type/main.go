package main

import "fmt"

type I1 interface {
	I1Method1()
}

type I2 interface {
	I2Method1()
}

type S1 struct{}

func (s *S1) I1Method1() {}

type S2 struct{}

func (s *S2) I2Method1() {}

type S3 struct{}

func (s *S3) I1Method1() {}
func (s *S3) I2Method1() {}

func whichType(x interface{}) {
	switch x.(type) {
	case I1:
		fmt.Println("I1")
	}

	switch x.(type) {
	case I2:
		fmt.Println("I2")
	}

	switch x.(type) {
	case S1:
		fmt.Println("S1")
	}
	switch x.(type) {
	case *S1:
		fmt.Println("*S1")
	}

	switch x.(type) {
	case S2:
		fmt.Println("S2")
	}
	switch x.(type) {
	case *S2:
		fmt.Println("*S2")
	}

	switch x.(type) {
	case S3:
		fmt.Println("S3")
	}
	switch x.(type) {
	case *S3:
		fmt.Println("*S3")
	}
}

func main() {
	//x := S1{}
	//x := &S1{}
	//x := S2{}
	//x := &S2{}
	//x := S3{}
	x := &S3{}
	whichType(x)
}

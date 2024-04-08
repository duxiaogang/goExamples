package main

import "fmt"

type Inf interface {
	a()
	b()
}

type DefImpl struct {
}

func (i *DefImpl) a() {
	fmt.Println("DefImpl.a()")
}

func (i *DefImpl) b() {
	fmt.Println("DefImpl.b()")
}

type DefImpl2 struct {
}

func (i *DefImpl2) a() {
	fmt.Println("DefImpl2.a()")
}

func (i *DefImpl2) b() {
	fmt.Println("DefImpl2.b()")
}

type Impl struct {
	DefImpl
	DefImpl2
}

func (i *Impl) a() {
	fmt.Println("Impl.a()")
}

func (i *Impl) b() {
	fmt.Println("Impl.b()")
}

func main() {
	var x Inf = nil
	x = &Impl{}
	x.a()
	x.b()
}

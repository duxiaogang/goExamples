package main

import "fmt"

type Options struct {
	i1 int
	i2 int
	f1 float32
	s1 string
}

type Option func(options *Options)

func NewOptions(options ...Option) *Options {
	a := &Options{}
	for _, o := range options {
		o(a)
	}
	return a
}

func WithI1(v int) Option {
	return func(options *Options) {
		options.i1 = v
	}
}

func WithI2(v int) Option {
	return func(options *Options) {
		options.i2 = v
	}
}

func WithF1(v float32) Option {
	return func(options *Options) {
		options.f1 = v
	}
}

func WithS1(v string) Option {
	return func(options *Options) {
		options.s1 = v
	}
}

func main() {
	a := NewOptions(WithF1(0.1), WithS1("hello"), WithI1(1))
	fmt.Println(a)
}

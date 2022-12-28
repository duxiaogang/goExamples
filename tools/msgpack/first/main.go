package main

import (
	"fmt"
	"github.com/vmihailenco/msgpack/v5"
)

type Item struct {
	Typ   uint8
	Count uint32
	Desc  string
}

type NotItem struct {
	Typ   uint8
	Count uint32
	Desc  string
}

func main() {
	item := Item{1, 2, "example"}
	b, err := msgpack.Marshal(item)
	if err != nil {
		panic(err)
	}
	fmt.Println(len(b))
	fmt.Println(b)

	var i NotItem
	err = msgpack.Unmarshal(b, &i)
	if err != nil {
		panic(err)
	}
	fmt.Println(i)
}

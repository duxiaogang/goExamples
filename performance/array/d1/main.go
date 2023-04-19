package main

import (
	"fmt"
	"math/rand"
)

const SIZE = 1000 * 1000 * 1000
const RANGE = 1 * 1000 * 1000
const COUNT = 1 * 1000 * 1000

func main() {
	data := make([]int, SIZE)
	for i := 0; i < SIZE; i++ {
		data[i] = rand.Int()
	}
	xSlice := make([]int, COUNT)
	ySlice := make([]int, COUNT)
	for i := 0; i < COUNT; i++ {
		tmp := rand.Intn(RANGE)
		xSlice[i] = tmp
		ySlice[i] = 0
	}

	sum := 0
	for i := 0; i < 1*1000; i++ {
		for j := 0; j < COUNT; j++ {
			sum += data[xSlice[j]] + ySlice[j]
		}
	}
	fmt.Println(sum)
}

package main

import (
	"fmt"
	"math/rand"
)

const SIZE = 1000
const CYCLE = 1000 * 1000

func main() {
	size := SIZE * SIZE
	data := make([]int, size)
	for i := 0; i < size; i++ {
		data[i] = rand.Intn(100)
	}
	xSlice := make([]int, CYCLE)
	ySlice := make([]int, CYCLE)
	for j := 0; j < CYCLE; j++ {
		tmp := rand.Intn(size)
		xSlice[j] = tmp / SIZE
		ySlice[j] = tmp % SIZE
	}

	sum := 0
	for i := 0; i < 1000*1; i++ {
		for j := 0; j < CYCLE; j++ {
			sum += data[xSlice[j]] + ySlice[j]
		}
	}
	fmt.Println(sum)
}

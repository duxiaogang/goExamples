package tmp

import (
	"fmt"
	"math/rand"
	"testing"
)

func BenchmarkMapOP(b *testing.B) {
	f := func(cap int) {
		dict := make(map[int]int, cap)
		for i := 0; i < 2; i++ {
			dict[rand.Int()] = rand.Int()
		}
		b.Run(fmt.Sprintf("Range, cap=%d", cap), func(b *testing.B) {
			sum := 0
			for i := 0; i < b.N; i++ {
				for k, v := range dict {
					sum += k + v
				}
			}
		})
	}
	f(0)
	f(10)
	f(100)
	f(1000)
	f(10 * 1000)
	f(100 * 1000)
	f(1000 * 1000)
	f(10 * 1000 * 1000)
	f(100 * 1000 * 1000)
	f(1000 * 1000 * 1000)

	{
		var dict []map[int]int
		for i := 0; i < 1000*1000; i++ {
			tmp := make(map[int]int, 1000*10)
			for i := 0; i < 2; i++ {
				tmp[rand.Int()] = rand.Int()
			}
			dict = append(dict, tmp)
		}
		b.Run("Range2, 10000", func(b *testing.B) {
			sum := 0
			for i := 0; i < b.N; i++ {
				r := rand.Int() % (1000 * 1000)
				for k, v := range dict[r] {
					sum += k + v
				}
			}
		})
	}

	//b.Run("Insert", func(b *testing.B) {
	//	for i := 0; i < b.N; i++ {
	//		dict[rand.Int()] = rand.Int()
	//	}
	//})
	//b.Run("Delete&Insert", func(b *testing.B) {
	//	for i := 0; i < b.N; i++ {
	//		dict[rand.Int()] = rand.Int()
	//		for k, _ := range dict {
	//			delete(dict, k)
	//			break
	//		}
	//	}
	//})
}

package _map

import (
	"fmt"
	"testing"
)

func TestArrMap(t *testing.T) {
	m := make(map[string][8]int)

	{
		a, ok := m["a"]
		a[0] = 1000
		a[1] = 1001
		a[2] = 1002
		m["a"] = a

		for k, arr := range m {
			fmt.Println("ok:", ok)
			fmt.Println("key:", k)
			for _, v := range arr {
				fmt.Println("\tvalue:", v)
			}
		}
	}

	{
		a, ok := m["a"] //复制数组了？
		a[0] = 2000
		a[1] = 2001
		a[2] = 2002
		//m["a"] = a

		for k, arr := range m {
			fmt.Println("ok:", ok)
			fmt.Println("key:", k)
			for _, v := range arr {
				fmt.Println("\tvalue:", v)
			}
		}
	}
}

func TestArr(t *testing.T) {
	var arr [8]int

	for _, v := range arr {
		fmt.Println("value:", v)
	}

	{
		fmt.Println("------------------------")
		s := arr //直接复制数组，并没有slice？所以不存在共享?
		s[0] = 100
		for _, v := range arr {
			fmt.Println("value:", v)
		}
	}

	{
		fmt.Println("------------------------")
		s := arr[:]
		s[0] = 100
		for _, v := range arr {
			fmt.Println("value:", v)
		}
	}
}

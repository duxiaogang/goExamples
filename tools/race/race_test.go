package race

import (
	"fmt"
	"sync"
	"sync/atomic"
	"testing"
	"time"
)

func TestMultiReadNoSync(t *testing.T) {
	var v int64 = 0

	var i int64
	for i = 0; i < 10; i++ {
		go func(index int64) {
			time.Sleep(100 * time.Millisecond)
			//v = index
			fmt.Println(index, v)
		}(i)
	}

	time.Sleep(200 * time.Millisecond)

	fmt.Println("main", v)
}

func TestMultiWriteNoSync(t *testing.T) {
	var v int64 = 0

	var i int64
	for i = 0; i < 10; i++ {
		go func(index int64) {
			time.Sleep(100 * time.Millisecond)
			v = index
		}(i)
	}

	time.Sleep(200 * time.Millisecond)

	fmt.Println(v)
}

func TestMultiWriteWithLock(t *testing.T) {
	var v int64 = 0
	mu := sync.Mutex{}

	var i int64
	for i = 0; i < 20; i++ {
		go func(index int64) {
			time.Sleep(100 * time.Millisecond)

			mu.Lock()
			v = index
			mu.Unlock()
		}(i)
	}

	time.Sleep(200 * time.Millisecond)

	mu.Lock()
	fmt.Println(v)
	mu.Unlock()
}

func TestMultiWriteWithAtomic(t *testing.T) {
	var v int64 = 0

	var i int64
	for i = 0; i < 20; i++ {
		go func(index int64) {
			time.Sleep(100 * time.Millisecond)
			atomic.StoreInt64(&v, index)
		}(i)
	}

	time.Sleep(200 * time.Millisecond)

	fmt.Println(atomic.LoadInt64(&v))
	//fmt.Println(v) //???
}

func TestMultiReadAfterWrite(t *testing.T) {
	var v int64 = 0
	mu := sync.Mutex{}

	go func() {
		time.Sleep(300 * time.Millisecond)

		mu.Lock()
		v = 1
		mu.Unlock()
	}()

	time.Sleep(200 * time.Millisecond)

	mu.Lock()
	fmt.Println("main", v)
	mu.Unlock()

	fmt.Println("main", v)
	//fmt.Println("main", v)

	time.Sleep(500 * time.Millisecond)
}

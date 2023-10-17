package ooc

import (
	"context"
	"sync"
	"sync/atomic"
	"time"
)

// todo: struct?
const goIdMax = 1024 * 1024

var toFlags [goIdMax]int32    //todo: to bitmap
var toMap map[int64]time.Time //todo: map=>prior queue?
var tmpArr []int64
var mu sync.Mutex

func SetTimeout(goId int64, duration time.Duration) {
	if goId < 0 || goId >= goIdMax {
		return
	}

	mu.Lock()
	defer mu.Unlock()

	atomic.StoreInt32(&toFlags[goId], 0)
	toMap[goId] = time.Now().Add(duration)
}

//go:nosplit
func IsTimeout(goId int64) bool {
	if goId < 0 || goId >= goIdMax {
		return false
	}

	to := atomic.LoadInt32(&toFlags[goId])
	if to != 0 {
		return true
	}
	return false
}

func ClearTimeout(goId int64) {
	if goId < 0 || goId >= goIdMax {
		return
	}

	mu.Lock()
	defer mu.Unlock()

	atomic.StoreInt32(&toFlags[goId], 0)
	delete(toMap, goId)
}

func updateToFlags() {
	mu.Lock()
	defer mu.Unlock()

	tmpArr = tmpArr[:0]
	now := time.Now()
	for goId, to := range toMap {
		if now.After(to) {
			tmpArr = append(tmpArr, goId)
		}
	}
	for _, goId := range tmpArr {
		atomic.StoreInt32(&toFlags[goId], 1)
		delete(toMap, goId)
	}
}

func Run(ctx context.Context) {
	tk := time.NewTicker(time.Millisecond * 100)
	for {
		select {
		case <-ctx.Done():
			return
		case <-tk.C:
			updateToFlags()
		}
	}
}

func init() {
	toMap = make(map[int64]time.Time)
	tmpArr = make([]int64, 0, 100)
}

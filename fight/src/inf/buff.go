package inf

import "time"

type BuffInfo struct {
	tid     int32
	timeout time.Time
}

type BuffMgrInf interface {
	Init(entity EntityInf)

	Add(tid int32, duration time.Duration, args ...any) bool
	List() []BuffInfo

	OnUpdate(now time.Time)
	OnDamage()
}

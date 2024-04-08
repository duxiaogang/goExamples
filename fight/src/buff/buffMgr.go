package buff

import (
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

type BuffMgr struct {
	entity  inf.EntityInf
	buffMap map[int32]BuffInf
}

func (bm *BuffMgr) Init(entity inf.EntityInf) {
}

func (bm *BuffMgr) Add(tid int32, duration time.Duration, args ...any) bool {
	return false
}

func (bm *BuffMgr) List() []inf.BuffInfo {
	return nil
}

func (bm *BuffMgr) OnUpdate(now time.Time) {
}

func (bm *BuffMgr) OnDamage() {
}

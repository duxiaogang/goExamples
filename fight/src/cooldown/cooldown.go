package cooldown

import (
	"github.com/duxiaogang/goExamples/fight/src/g"
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

var _ inf.CoolDownMgrInf = (*CoolDownMgr)(nil)

type CoolDownMgr struct {
	_map map[inf.ConfigID]time.Time
}

func NewCoolDownMgr() *CoolDownMgr {
	mgr := &CoolDownMgr{}
	mgr._map = make(map[inf.ConfigID]time.Time)
	return mgr
}

func (mgr *CoolDownMgr) Init() {
}

func (mgr *CoolDownMgr) IsInCoolDown(id inf.ConfigID) bool {
	to, ok := mgr._map[id]
	if !ok {
		return false
	}
	//found
	now := g.Common.Now()
	if now.After(to) {
		return false
	}
	return true //ing
}

func (mgr *CoolDownMgr) SetCoolDown(id inf.ConfigID) {
	cfg := g.ConfigSet.GetCoolDownConfig(id)
	if cfg == nil {
		//not found
		return
	}
	to := g.Common.Now().Add(cfg.Duration)
	mgr._map[id] = to
}

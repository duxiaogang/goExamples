package skill

import (
	"fmt"
	"github.com/duxiaogang/goExamples/fight/src/g"
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

var _ inf.SkillMgrInf = (*SkillMgr)(nil)

type SkillMgr struct {
	entity       inf.EntityInf
	commonAttack *Skill
	skills       []*Skill
	curSkill     *Skill
}

func NewSkillMgr() *SkillMgr {
	return &SkillMgr{}
}

func (mgr *SkillMgr) Init(commonAttack inf.ConfigID, skills []inf.ConfigID, entity inf.EntityInf) error {
	mgr.entity = entity
	cfg := g.ConfigSet.GetSkillConfig(commonAttack)
	if cfg == nil {
		return fmt.Errorf("skill config not found, id = %d", commonAttack)
	}
	mgr.commonAttack = NewSkill(cfg)

	//todo: other skills

	return nil
}

func (mgr *SkillMgr) GetAttackRange() float64 {
	return mgr.commonAttack.GetAttackRange()
}

func (mgr *SkillMgr) IsCasting() bool {
	return mgr.curSkill != nil && mgr.curSkill.IsCasting()
}

func (mgr *SkillMgr) Attack(target inf.EntityInf) bool {
	if mgr.IsCasting() {
		return false
	}
	mgr.curSkill = mgr.commonAttack
	return mgr.curSkill.Cast(mgr.entity, target)
}

func (mgr *SkillMgr) OnUpdate(now time.Time) {
	sk := mgr.curSkill
	if sk != nil {
		sk.OnUpdate(now)
		if sk.IsEnd() {
			mgr.curSkill = nil
		}
	}
}

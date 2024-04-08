package ai

import (
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

var _ AIInf = (*AIHealer)(nil)

type AIHealer struct {
	config *inf.AIConfig
	entity inf.EntityInf
	target inf.EntityInf
}

func NewAIHealer(config *inf.AIConfig, entity inf.EntityInf) *AIHealer {
	ai := &AIHealer{}
	ai.config = config
	ai.entity = entity
	return ai
}

func (ai *AIHealer) SetConfig(config *inf.AIConfig) {
	ai.config = config
}

func (ai *AIHealer) OnUpdate(now time.Time) {
	if !ai.isValidTarget(ai.target) {
		ai.selectTarget()
	}
	if ai.target == nil {
		return
	}

	ar := ai.entity.SkillMgr().GetAttackRange()
	d := ai.entity.DistanceTo(ai.target)
	if d > ar {
		ai.entity.Chase(ai.target, ar-0.3)
	}
	if d <= ar {
		ai.entity.Attack(ai.target)
	}
}

func (ai *AIHealer) isValidTarget(target inf.EntityInf) bool {
	if target == nil || !target.IsAlive() {
		return false
	}
	return true
}

func (ai *AIHealer) selectTarget() inf.EntityInf {
	ai.target = nil
	friends := ai.entity.ListNearbyFriends(ai.config.SightMax, 10)
	for _, e := range friends {
		if ai.isValidTarget(e) {
			ai.target = friends[0]
			return ai.target
		}
	}
	return nil
}

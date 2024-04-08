package ai

import (
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

var _ AIInf = (*AIFighter)(nil)

type AIFighter struct {
	config *inf.AIConfig
	entity inf.EntityInf
	target inf.EntityInf
}

func NewAIFighter(config *inf.AIConfig, entity inf.EntityInf) *AIFighter {
	ai := &AIFighter{}
	ai.config = config
	ai.entity = entity
	return ai
}

func (ai *AIFighter) SetConfig(config *inf.AIConfig) {
	ai.config = config
}

func (ai *AIFighter) OnUpdate(now time.Time) {
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

func (ai *AIFighter) isValidTarget(target inf.EntityInf) bool {
	if target == nil || !target.IsAlive() {
		return false
	}
	return true
}

func (ai *AIFighter) selectTarget() inf.EntityInf {
	ai.target = nil
	enemies := ai.entity.ListNearbyEnemies(ai.config.SightMax, 10)
	for _, e := range enemies {
		if ai.isValidTarget(e) {
			ai.target = enemies[0]
			return ai.target
		}
	}
	return nil
}

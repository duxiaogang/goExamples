package ai

import (
	"github.com/duxiaogang/goExamples/fight/src/view"
	"time"
)

type AIFighter struct {
	AIBase
	entity view.EntityInf
	target view.EntityID
}

func IsValidTarget(target view.EntityID) bool {
	//todo: is alive?
	return target != 0
}

func (ai *AIFighter) OnUpdate(now time.Time) {
	if !IsValidTarget(ai.target) {
		ai.SelectTarget()
	}
	if !IsValidTarget(ai.target) {
		return
	}

	r := ai.entity.SkillMgr().GetAttackRange()
	d := ai.entity.DistanceTo(ai.target)
	if d > r {
		ai.entity.Chase(ai.target, r-0.3)
	}
	if d <= r {
		ai.entity.Attack(ai.target)
	}
}

func (ai *AIFighter) SelectTarget() view.EntityID {
	targets := ai.entity.ListNearestTargets(100)
	if len(targets) > 0 {
		ai.target = targets[0].ID()
		return ai.target
	}
	return 0
}

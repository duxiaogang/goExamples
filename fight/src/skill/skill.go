package skill

import (
	"github.com/duxiaogang/goExamples/fight/src/g"
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

type Skill struct {
	config       *inf.SkillConfig
	casting      bool
	entity       inf.EntityInf
	target       inf.EntityInf
	inPhase1     bool
	inPhase2     bool
	phaseTimeout time.Time
	canCancel    bool
}

func NewSkill(config *inf.SkillConfig) *Skill {
	sk := &Skill{}
	sk.config = config
	return sk
}

func (sk *Skill) ID() inf.ConfigID {
	return sk.config.ID
}

func (sk *Skill) GetAttackRange() float64 {
	return sk.config.AttackRange
}

func (sk *Skill) Cast(entity, target inf.EntityInf) bool {
	//check
	if sk.casting {
		return false
	}
	//check attack range
	d := entity.DistanceTo(target)
	if d > sk.GetAttackRange() {
		return false
	}
	//check mp cost
	if entity.Prop().GetMP() < sk.config.MPCost {
		return false
	}
	//check cd
	if sk.config.CoolDown != 0 {
		if entity.CoolDownMgr().IsInCoolDown(sk.config.CoolDown) {
			return false
		}
	}

	//cast
	sk.reset()
	sk.casting = true
	sk.entity = entity
	sk.target = target

	now := g.Common.Now()
	//phase1
	sk.doPhase1(now)
	if !sk.isPhase1Complete(now) {
		return true
	}
	//do attack
	sk.doAttack()
	//do effect
	sk.doEffect()
	//do cost/cooldown
	sk.doCost()
	//phase2
	sk.doPhase2(now)
	if !sk.isPhase2Complete(now) {
		return true
	}
	//end
	sk.casting = false
	return true
}

func (sk *Skill) reset() {
	sk.casting = false
	sk.entity = nil
	sk.target = nil
	sk.inPhase1 = false
	sk.inPhase2 = false
	//sk.phaseTimeout =
	sk.canCancel = false
}

func (sk *Skill) doPhase1(now time.Time) {
	sk.inPhase1 = true
	sk.phaseTimeout = now.Add(sk.config.Phase1Duration)
	sk.canCancel = sk.config.Phase1CanCancel
}

func (sk *Skill) isPhase1Complete(now time.Time) bool {
	if sk.inPhase1 {
		if now.Before(sk.phaseTimeout) {
			return false
		}
		return true
	}
	return false
}

func (sk *Skill) doAttack() {
	myProp := sk.entity.Prop()
	targetProp := sk.target.Prop()

	strength := myProp.Get(inf.Strength)
	percent := g.Common.Random(sk.config.PercentDamageMin, sk.config.PercentDamageMax)
	point := g.Common.Random(sk.config.PointDamageMin, sk.config.PointDamageMax)
	atk := strength*percent + point

	defense := targetProp.Get(inf.Defense)

	damage := atk - defense
	if damage > 0 {
		targetProp.SetHP(targetProp.GetHP() - damage)
	}
}

func (sk *Skill) doEffect() {
	//todo:
}

func (sk *Skill) doCost() {
	//mp
	myProp := sk.entity.Prop()
	myProp.SetMP(myProp.GetMP() - sk.config.MPCost)
	//cd
	sk.entity.CoolDownMgr().SetCoolDown(sk.config.CoolDown)
}

func (sk *Skill) doPhase2(now time.Time) {
	sk.inPhase1 = false
	sk.inPhase2 = true
	sk.phaseTimeout = now.Add(sk.config.Phase2Duration)
	sk.canCancel = sk.config.Phase2CanCancel
}

func (sk *Skill) isPhase2Complete(now time.Time) bool {
	if sk.inPhase2 {
		if now.Before(sk.phaseTimeout) {
			return false
		}
		return true
	}
	return false
}

func (sk *Skill) OnUpdate(now time.Time) {
	if !sk.casting {
		return
	}
	if sk.inPhase1 {
		if !sk.isPhase1Complete(now) {
			return
		}
		//do attack
		sk.doAttack()
		//do effect
		sk.doEffect()
		//do cost/cooldown
		sk.doCost()
		//phase2
		sk.doPhase2(now)
	}
	if sk.inPhase2 {
		if !sk.isPhase2Complete(now) {
			return
		}
		sk.casting = false
	}
}

func (sk *Skill) CanCancel() bool {
	return sk.casting && sk.canCancel
}

func (sk *Skill) Cancel() bool {
	if sk.casting && sk.canCancel {
		sk.reset()
		return true
	}
	return false
}

func (sk *Skill) IsCasting() bool {
	return sk.casting == true
}

func (sk *Skill) IsEnd() bool {
	return sk.casting == false
}

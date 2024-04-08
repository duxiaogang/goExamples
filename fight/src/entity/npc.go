package entity

import (
	"github.com/duxiaogang/goExamples/fight/src/inf"
)

var _ inf.EntityInf = (*NPC)(nil)

type NPC struct {
	skillMgr inf.SkillMgrInf
}

func (npc *NPC) Chase(target inf.EntityInf, stopDistance float64) {
}

func (npc *NPC) Attack(target inf.EntityInf) {
}

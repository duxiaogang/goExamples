package inf

import "time"

//type SkillInf interface {
//	Start() bool
//	Update() bool
//	Cancel() bool
//}

type SkillMgrInf interface {
	Init(commonAttack ConfigID, skills []ConfigID, entity EntityInf) error
	GetAttackRange() float64

	Attack(target EntityInf) bool
	OnUpdate(now time.Time)

	//Start(id int32) bool
	//Cancel() bool
}

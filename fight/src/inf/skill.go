package view

type SkillConfig struct {
}

//type SkillInf interface {
//	Start() bool
//	Update() bool
//	Cancel() bool
//}

type SkillMgrInf interface {
	Init(id ConfigID, entity EntityInf) error
	GetAttackRange() float64

	//Start(id int32) bool
	//Cancel() bool
}

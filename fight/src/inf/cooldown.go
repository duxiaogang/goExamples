package inf

type CoolDownMgrInf interface {
	Init()
	IsInCoolDown(id ConfigID) bool
	SetCoolDown(id ConfigID)
}

package view

type EntityID int32

type EntityInf interface {
	ID() EntityID
	Prop() PropInf
	BuffMgr() BuffMgrInf
	SkillMgr() SkillMgrInf
	AIMgr() AIMgrInf

	DistanceTo(target EntityInf) float64
	Chase(target EntityInf, stopDistance float64)
	Attack(target EntityInf)
	//ListNearestTargets(radius float64, maxCount int32) []EntityInf
	ListNearbyEnemies(radius float64, maxCount int32) []EntityInf
	ListNearbyFriends(radius float64, maxCount int32) []EntityInf
	IsAlive() bool
}

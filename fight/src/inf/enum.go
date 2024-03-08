package view

type PropIndex int

const (
	HPMax PropIndex = iota
	MPMax
	Strength
	Defense
	Agility
	PropCount
)

type ConfigID int32

type AIPolicy int

const (
	Fighter AIPolicy = iota
	Healer
	Assassin
)

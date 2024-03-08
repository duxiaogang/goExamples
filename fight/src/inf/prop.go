package view

type PropInf interface {
	Init(entity EntityInf) bool //todo:

	Get(index PropIndex) float64
	ModByPercent(index PropIndex, percent float64) float64
	ModByPoint(index PropIndex, point float64) float64

	//HP
	GetHP() float64
	SetHP(val float64) float64

	//MP
	GetMP() float64
	SetMP(val float64) float64
}

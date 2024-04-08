package prop

import "github.com/duxiaogang/goExamples/fight/src/inf"

var _ inf.PropInf = (*Prop)(nil)

type Prop struct {
	entity inf.EntityInf

	//cur = base x (1 + percent) + point
	base    [inf.PropCount]float64
	percent [inf.PropCount]float64
	point   [inf.PropCount]float64
	cur     [inf.PropCount]float64

	hp float64
	mp float64
}

func (p *Prop) Init(entity inf.EntityInf) bool {
	return false
}

func (p *Prop) Get(index inf.PropIndex) float64 {
	return 0
}
func (p *Prop) ModByPercent(index inf.PropIndex, percent float64) float64 {
	return 0
}
func (p *Prop) ModByPoint(index inf.PropIndex, point float64) float64 {
	return 0
}

// HP
func (p *Prop) GetHP() float64 {
	return 0
}
func (p *Prop) SetHP(val float64) float64 {
	return 0
}

// MP
func (p *Prop) GetMP() float64 {
	return 0
}
func (p *Prop) SetMP(val float64) float64 {
	return 0
}

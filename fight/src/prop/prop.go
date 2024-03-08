package src

var _ PropInf = (*Prop)(nil)

type Prop struct {
	base    [PropCount]float64
	percent [PropCount]float64
	point   [PropCount]float64
	cur     [PropCount]float64

	hp float64
	mp float64
}

func (p *Prop) Init() bool {
	return false
}

func (p *Prop) Get(index PropIndex) float64 {
	return 0
}
func (p *Prop) ModByPercent(index PropIndex, percent float64) float64 {
	return 0
}
func (p *Prop) ModByPoint(index PropIndex, point float64) float64 {
	return 0
}

// HP
func (p *Prop) GetHP() float64 {
	return 0
}
func (p *Prop) SetHP(val float64) {
}

// MP
func (p *Prop) GetMP() float64 {
	return 0
}
func (p *Prop) SetMP(val float64) {
}

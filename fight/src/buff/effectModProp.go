package buff

import (
	"github.com/duxiaogang/goExamples/fight/src/inf"
)

type EffectModProp struct {
	EffectBase
	owner inf.EntityInf
}

func (e *EffectModProp) OnAttach() {
	e.owner.Prop().ModByPercent(inf.HPMax, 0.15)
}

func (e *EffectModProp) OnDetach() {
	e.owner.Prop().ModByPercent(inf.HPMax, -0.15)
}

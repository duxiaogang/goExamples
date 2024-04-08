package buff

import "time"

type EffectInf interface {
	OnAttach()
	OnDetach()
	OnUpdate(now time.Time)
	OnDamage()
}

type EffectBase struct {
}

func (e *EffectBase) OnAttach() {
}

func (e *EffectBase) OnDetach() {
}

func (e *EffectBase) OnUpdate(now time.Time) {
}

func (e *EffectBase) OnDamage() {
}

package buff

import "time"

type BuffInf interface {
	OnAttach()
	OnDetach()
	OnUpdate(now time.Time)
	OnDamage()
}

type Buff struct {
}

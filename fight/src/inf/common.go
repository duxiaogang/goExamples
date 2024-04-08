package inf

import "time"

type CommonInf interface {
	Now() time.Time
	Random(min, max float64) float64
	FindEntity(id EntityID) EntityInf
}

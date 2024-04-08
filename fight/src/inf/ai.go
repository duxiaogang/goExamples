package inf

import "time"

type AIMgrInf interface {
	Init(id ConfigID, entity EntityInf) error
	OnUpdate(now time.Time)
}

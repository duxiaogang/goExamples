package ai

import (
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

type AIInf interface {
	SetConfig(config *inf.AIConfig)
	OnUpdate(now time.Time)
}

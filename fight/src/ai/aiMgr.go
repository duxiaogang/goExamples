package ai

import (
	"fmt"
	"github.com/duxiaogang/goExamples/fight/src/inf"
	"time"
)

var _ inf.AIMgrInf = (*AIMgr)(nil)

type AIMgr struct {
	ai AIInf
}

func (mgr *AIMgr) Init(id inf.ConfigID, entity inf.EntityInf) error {
	//todo: load config
	config := inf.ConfigSet.GetAIConfig(id)
	if config == nil {
		return fmt.Errorf("AIConfig not found, id = %d", id)
	}

	if config.Policy == inf.Fighter {
		mgr.ai = NewAIFighter(config, entity)
	} else if config.Policy == inf.Healer {
		mgr.ai = NewAIHealer(config, entity)
	} else {
		return fmt.Errorf("wrong policy = %d", config.Policy)
	}
	return nil
}

func (mgr *AIMgr) OnUpdate(now time.Time) {
	if mgr.ai != nil {
		mgr.ai.OnUpdate(now)
	}
}

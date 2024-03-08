package view

type AIConfig struct {
	Policy   AIPolicy //通用：ai policy
	SightMax float64  //通用：选目标范围
	//todo: more
}

type ConfigSetInf interface {
	GetAIConfig(id ConfigID) *AIConfig
}

var ConfigSet ConfigSetInf

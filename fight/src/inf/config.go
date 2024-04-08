package inf

import "time"

type ProfID int32

type ProfConfig struct {
	ID                  ProfID
	CommonAttackSkillID ConfigID //普攻技能id
}

type SkillConfig struct {
	ID ConfigID

	AttackRange float64 //离目标多近才能放
	Friendly    bool    //目标友军?

	Phase1Duration  time.Duration //前摇时长
	Phase1CanCancel bool          //前摇是否可取消

	AOE              bool    //范围攻击？
	PercentDamageMax float64 //最大比例伤害
	PercentDamageMin float64 //最小比例伤害
	PointDamageMax   float64 //最大附加伤害
	PointDamageMin   float64 //最小附加伤害

	//伤害类型: 普通/元素

	Phase2Duration  time.Duration //后摇时长
	Phase2CanCancel bool          //后摇是否可取消

	MPCost   float64  //耗蓝
	CoolDown ConfigID //cd
}

type CoolDownConfig struct {
	ID       ConfigID
	Duration time.Duration //冷却时长
}

type AIConfig struct {
	Policy   AIPolicy //通用：ai policy
	SightMax float64  //通用：选目标范围
	//todo: more
}

type ConfigSetInf interface {
	GetProfConfig(id ConfigID) *ProfConfig
	GetSkillConfig(id ConfigID) *SkillConfig
	GetCoolDownConfig(id ConfigID) *CoolDownConfig
	GetAIConfig(id ConfigID) *AIConfig
}

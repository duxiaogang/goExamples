package src

// 除可能的create函数外，其他所有函数都没有返回值，只用于逻辑模块单向通知显示模块
type ShowInf1 interface {
	F1()
	F2(i1 int32)
	F3(i1, i2 int32, f1, f2, f3 float32, s1 string)
}

//global+static function
//func CreateShowObject1() ShowInf1

package app

func GlobalFunc1() string {
	return "original GlobalFunc1()"
}

func GlobalFunc2() string {
	return "original GlobalFunc2()"
}

func GlobalFunc3() string {
	return "original GlobalFunc3()"
}

func privateFunc1() string {
	return "original privateFunc1()"
}

func privateFunc2() string {
	return "original privateFunc2()"
}

func privateFunc3() string {
	return "original privateFunc3()"
}

func CallPrivateFunc1() string {
	return privateFunc1()
}

func CallPrivateFunc2() string {
	return privateFunc2()
}

func CallPrivateFunc3() string {
	return privateFunc3()
}

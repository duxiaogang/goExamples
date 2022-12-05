package user

import "github.com/duxiaogang/goExamples/tools/gomock/tutorial/doer"

type User struct {
	Doer doer.Doer
}

func (u *User) Use() error {
	return u.Doer.DoSomething(123, "Hello, GoMock")
}

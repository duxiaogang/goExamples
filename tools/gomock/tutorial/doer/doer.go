package doer

//go:generate mockgen -destination=../mocks/mock_doer.go -package=mocks github.com/duxiaogang/goExamples/tools/gomock/tutorial/doer Doer
type Doer interface {
	DoSomething(int, string) error
}

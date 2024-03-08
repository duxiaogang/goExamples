package view

type CommonInf interface {
	FindEntity(id EntityID) EntityInf
}

var Common CommonInf

func init() {
	Common = nil
}

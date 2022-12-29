package receiver

import (
	"testing"
)

type inf interface {
	methodObjectReceiver()
	methodPointerReceiver()
}

type imp struct {
	v int
}

func (o imp) methodObjectReceiver() {
	o.v = 2
}

func (o *imp) methodPointerReceiver() {
	o.v = 3
}

func TestSugar2(t *testing.T) {
	var i inf

	//imp{}并没有实现inf
	//i = imp{}

	//&imp{}实现了inf
	//因为语法糖的存在，如果没有interface，其实很难分辨imp{}是否实现了methodPointerReceiver
	i = &imp{}
	i.methodObjectReceiver()
	i.methodPointerReceiver()
}

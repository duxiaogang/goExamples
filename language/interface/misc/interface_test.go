package misc

import (
	"fmt"
	"testing"
)

type myError struct{}

func (myError) Error() string {
	return "myError.Error()"
}

func TestNilInterface(t *testing.T) {
	var err error
	if err == nil {
		fmt.Println("err == nil")
	}

	err = (*myError)(nil)
	if err != nil {
		fmt.Println("(*myError)(nil) != nil")
	}
}

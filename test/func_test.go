package tmp

import (
	"encoding/hex"
	"fmt"
	"testing"
)

func TestHexCodec(t *testing.T) {
	buf := make([]byte, 1000)
	n := hex.Encode(buf, []byte("12345"))
	fmt.Println(buf[:n])
	fmt.Println(string(buf))
}

func TestCastSliceToArray(t *testing.T) {
	s := []byte("0123456789")
	var fa [10]byte
	fa = *(*[10]byte)(s)
	fmt.Println(fa)
}

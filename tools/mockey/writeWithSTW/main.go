package main

import (
	"fmt"
	_ "github.com/bytedance/mockey"
	"unsafe"
	_ "unsafe"
)

//go:linkname WriteWithSTW github.com/bytedance/mockey/internal/monkey/mem.WriteWithSTW
func WriteWithSTW(target uintptr, data []byte)

//go:linkname stopTheWorld runtime.stopTheWorld
func stopTheWorld(reason uint8)

//go:linkname StartTheWorld runtime.startTheWorld
func StartTheWorld()

func StopTheWorld() {
	const stwForTestResetDebugLog = 16
	stopTheWorld(stwForTestResetDebugLog)
}

func main() {
	i := 12345
	data := []byte{1, 2, 3, 4}
	WriteWithSTW(uintptr(unsafe.Pointer(&i)), data)
	fmt.Println(i)

	//StopTheWorld()
	//StartTheWorld()
}

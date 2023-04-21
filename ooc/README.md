# ooc:
## changes:
#### preempt_amd64.s:
```go
	CALL ·checkOOC(SB)
	CALL ·asyncPreempt2(SB)
```

#### runtime2.go:
```go
	//------------------------------------------ du
	oocChecker func()
	//---------------------------------------------
```

#### preempt.go:
```go
//------------------------------------------ du
func SetOOCChecker(checker func()) {
	gp := getg()
if gp.oocChecker != nil && checker != nil {
		panic("SetOOCChecker")
	}
	gp.oocChecker = checker
}

//go:nosplit
func checkOOC() {
	gp := getg()
if gp.oocChecker != nil {
		gp.oocChecker()
	}
}
//---------------------------------------------
```
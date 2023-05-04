package main

import (
	"fmt"
	"math/rand"
)

//go:nosplit
func func1(i int) {
	if i <= 0 {
		return
	}
	func1(i - 1)
}

func _func2(i int) {
	if i <= 0 {
		return
	}
	_func2(i - 1)
}

//go:nosplit
func func2() {
	_func2(10)
}

//go:nosplit
func func3() {
	i0 := rand.Int()
	i1 := rand.Int() ^ i0
	i2 := rand.Int() ^ i1
	i3 := rand.Int() ^ i2
	i4 := rand.Int() ^ i3
	i5 := rand.Int() ^ i4
	i6 := rand.Int() ^ i5
	i7 := rand.Int() ^ i6
	i8 := rand.Int() ^ i7
	i9 := rand.Int() ^ i8
	i10 := rand.Int() ^ i9
	i11 := rand.Int() ^ i10
	i12 := rand.Int() ^ i11
	i13 := rand.Int() ^ i12
	i14 := rand.Int() ^ i13
	i15 := rand.Int() ^ i14
	i16 := rand.Int() ^ i15
	i17 := rand.Int() ^ i16
	i18 := rand.Int() ^ i17
	i19 := rand.Int() ^ i18
	i20 := rand.Int() ^ i19
	i21 := rand.Int() ^ i20
	i22 := rand.Int() ^ i21
	i23 := rand.Int() ^ i22
	i24 := rand.Int() ^ i23
	i25 := rand.Int() ^ i24
	i26 := rand.Int() ^ i25
	i27 := rand.Int() ^ i26
	i28 := rand.Int() ^ i27
	i29 := rand.Int() ^ i28
	i30 := rand.Int() ^ i29
	i31 := rand.Int() ^ i30
	i32 := rand.Int() ^ i31
	i33 := rand.Int() ^ i32
	i34 := rand.Int() ^ i33
	i35 := rand.Int() ^ i34
	i36 := rand.Int() ^ i35
	i37 := rand.Int() ^ i36
	i38 := rand.Int() ^ i37
	i39 := rand.Int() ^ i38
	i40 := rand.Int() ^ i39
	i41 := rand.Int() ^ i40
	i42 := rand.Int() ^ i41
	i43 := rand.Int() ^ i42
	i44 := rand.Int() ^ i43
	i45 := rand.Int() ^ i44
	i46 := rand.Int() ^ i45
	i47 := rand.Int() ^ i46
	i48 := rand.Int() ^ i47
	i49 := rand.Int() ^ i48
	i50 := rand.Int() ^ i49
	i51 := rand.Int() ^ i50
	i52 := rand.Int() ^ i51
	i53 := rand.Int() ^ i52
	i54 := rand.Int() ^ i53
	i55 := rand.Int() ^ i54
	i56 := rand.Int() ^ i55
	i57 := rand.Int() ^ i56
	i58 := rand.Int() ^ i57
	i59 := rand.Int() ^ i58
	i60 := rand.Int() ^ i59
	i61 := rand.Int() ^ i60
	i62 := rand.Int() ^ i61
	i63 := rand.Int() ^ i62
	i64 := rand.Int() ^ i63
	i65 := rand.Int() ^ i64
	i66 := rand.Int() ^ i65
	i67 := rand.Int() ^ i66
	i68 := rand.Int() ^ i67
	i69 := rand.Int() ^ i68
	i70 := rand.Int() ^ i69
	i71 := rand.Int() ^ i70
	i72 := rand.Int() ^ i71
	i73 := rand.Int() ^ i72
	i74 := rand.Int() ^ i73
	i75 := rand.Int() ^ i74
	i76 := rand.Int() ^ i75
	i77 := rand.Int() ^ i76
	i78 := rand.Int() ^ i77
	i79 := rand.Int() ^ i78
	i80 := rand.Int() ^ i79
	i81 := rand.Int() ^ i80
	i82 := rand.Int() ^ i81
	i83 := rand.Int() ^ i82
	i84 := rand.Int() ^ i83
	i85 := rand.Int() ^ i84
	i86 := rand.Int() ^ i85
	i87 := rand.Int() ^ i86
	i88 := rand.Int() ^ i87
	i89 := rand.Int() ^ i88
	/*
		i90 := rand.Int() ^ i89
		i91 := rand.Int() ^ i90
		i92 := rand.Int() ^ i91
		i93 := rand.Int() ^ i92
		i94 := rand.Int() ^ i93
		i95 := rand.Int() ^ i94
		i96 := rand.Int() ^ i95
		i97 := rand.Int() ^ i96
		i98 := rand.Int() ^ i97
		i99 := rand.Int() ^ i98
	*/
	fmt.Println(i89)
}

//go:nosplit
func func4() int {
	return 4
}

func func5() int {
	return func4()
}

func func6() int {
	i0 := rand.Int()
	i1 := rand.Int() ^ i0
	i2 := rand.Int() ^ i1
	i3 := rand.Int() ^ i2
	i4 := rand.Int() ^ i3
	i5 := rand.Int() ^ i4
	i6 := rand.Int() ^ i5
	i7 := rand.Int() ^ i6
	i8 := rand.Int() ^ i7
	i9 := rand.Int() ^ i8
	i10 := rand.Int() ^ i9
	i11 := rand.Int() ^ i10
	i12 := rand.Int() ^ i11
	i13 := rand.Int() ^ i12
	i14 := rand.Int() ^ i13
	i15 := rand.Int() ^ i14
	i16 := rand.Int() ^ i15
	i17 := rand.Int() ^ i16
	i18 := rand.Int() ^ i17
	i19 := rand.Int() ^ i18
	i20 := rand.Int() ^ i19
	i21 := rand.Int() ^ i20
	i22 := rand.Int() ^ i21
	i23 := rand.Int() ^ i22
	i24 := rand.Int() ^ i23
	i25 := rand.Int() ^ i24
	i26 := rand.Int() ^ i25
	i27 := rand.Int() ^ i26
	i28 := rand.Int() ^ i27
	i29 := rand.Int() ^ i28
	i30 := rand.Int() ^ i29
	i31 := rand.Int() ^ i30
	i32 := rand.Int() ^ i31
	i33 := rand.Int() ^ i32
	i34 := rand.Int() ^ i33
	i35 := rand.Int() ^ i34
	i36 := rand.Int() ^ i35
	i37 := rand.Int() ^ i36
	i38 := rand.Int() ^ i37
	i39 := rand.Int() ^ i38
	i40 := rand.Int() ^ i39
	i41 := rand.Int() ^ i40
	i42 := rand.Int() ^ i41
	i43 := rand.Int() ^ i42
	i44 := rand.Int() ^ i43
	i45 := rand.Int() ^ i44
	i46 := rand.Int() ^ i45
	i47 := rand.Int() ^ i46
	i48 := rand.Int() ^ i47
	i49 := rand.Int() ^ i48
	i50 := rand.Int() ^ i49
	i51 := rand.Int() ^ i50
	i52 := rand.Int() ^ i51
	i53 := rand.Int() ^ i52
	i54 := rand.Int() ^ i53
	i55 := rand.Int() ^ i54
	i56 := rand.Int() ^ i55
	i57 := rand.Int() ^ i56
	i58 := rand.Int() ^ i57
	i59 := rand.Int() ^ i58
	i60 := rand.Int() ^ i59
	i61 := rand.Int() ^ i60
	i62 := rand.Int() ^ i61
	i63 := rand.Int() ^ i62
	i64 := rand.Int() ^ i63
	i65 := rand.Int() ^ i64
	i66 := rand.Int() ^ i65
	i67 := rand.Int() ^ i66
	i68 := rand.Int() ^ i67
	i69 := rand.Int() ^ i68
	i70 := rand.Int() ^ i69
	i71 := rand.Int() ^ i70
	i72 := rand.Int() ^ i71
	i73 := rand.Int() ^ i72
	i74 := rand.Int() ^ i73
	i75 := rand.Int() ^ i74
	i76 := rand.Int() ^ i75
	i77 := rand.Int() ^ i76
	i78 := rand.Int() ^ i77
	i79 := rand.Int() ^ i78
	i80 := rand.Int() ^ i79
	i81 := rand.Int() ^ i80
	i82 := rand.Int() ^ i81
	i83 := rand.Int() ^ i82
	i84 := rand.Int() ^ i83
	i85 := rand.Int() ^ i84
	i86 := rand.Int() ^ i85
	i87 := rand.Int() ^ i86
	i88 := rand.Int() ^ i87
	i89 := rand.Int() ^ i88
	i90 := rand.Int() ^ i89
	return func4() + i90
}

func main() {
	//func1(1)

	//func2()

	//func3()

	fmt.Println(func4())
	fmt.Println(func5())
	fmt.Println(func6())
}

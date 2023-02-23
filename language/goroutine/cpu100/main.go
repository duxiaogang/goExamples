package main

func cpu100() {
	for {
	}
}

func main() {
	for i := 0; i < 100; i++ {
		go cpu100()
	}
	cpu100()
}

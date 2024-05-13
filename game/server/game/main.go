package game

import "net"

func handleNewClientConn(conn net.Conn) {
	defer conn.Close()

	//auth
	buf := make([]byte, 6)
	n, err := conn.Read(buf)
	if err != nil {
	}
	n++
}

func listenAndServeForClient() {
	ln, err := net.Listen("tcp", ":12345")
	if err != nil {
		panic("listen")
	}
	for {
		conn, err := ln.Accept()
		if err != nil {
			continue
		}
		go handleNewClientConn(conn)
	}
}

func main() {
	listenAndServeForClient()
}

#!/usr/bin/env python

import sys, os

def main():
	if len(sys.argv) != 2:
		print("usage: %s count" % sys.argv[0])
		return

	count = int(sys.argv[1])
	print("\ti0 := rand.Int()")
	for i in range(1, count):
		print("\ti%d := rand.Int() ^ i%s" % (i, i-1))
	print("\tfmt.Println(i%d)" % (count-1))
	


if __name__ == "__main__":
	main()

package main

import "github.com/pkg/profile"

func main() {
	defer profile.Start().Stop()
	defer profile.Start(profile.MemProfile).Stop()
	defer profile.Start(profile.MemProfile, profile.MemProfileRate(1)).Stop()
}

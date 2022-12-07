package first

import "testing"

func TestMission(t *testing.T) {
	monster := NewMonster()
	player := NewPlayer("dj")
	mission := NewMission(player, monster)

	mission.Start()
}

func TestWireGen(t *testing.T) {
	mission := InitMission("dj")
	mission.Start()
}

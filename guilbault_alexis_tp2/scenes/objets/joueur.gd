extends Node
var lane = 3
var laneSwitch = 0
var vspeed = 0
var vgoal = 0

func _input(event):
	if Input.is_action_just_pressed("Up"):
		if lane != 1 and vspeed == 0:
			lane -= 1
			$"../joueur".rotation = deg_to_rad(-15) 
			vspeed = -2
			$"./AudioStreamPlayer".play()
	if Input.is_action_just_pressed("Down"):
		if lane != 5 and vspeed == 0:
			lane += 1
			$"../joueur".rotation = deg_to_rad(15) 
			vspeed = 2
			$"./AudioStreamPlayer".play()

func _process(_delta: float) -> void:
	$"../joueur".position.y += vspeed
	match lane:
		1:
			vgoal = 272
		2:
			vgoal = 336
		3:
			vgoal = 400
		4:
			vgoal = 464
		5:
			vgoal = 528
	if $"../joueur".position.y == vgoal:
		$"../joueur".rotation = 0
		vspeed = 0
	$"./AnimatedSprite2D".play()

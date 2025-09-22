extends Node

var lane = 3
var laneSwitch = 0

var vspeed = 0
var vgoal = 0

var hspeed = 0
var maxspeed = 5

func _input(_event):
	if Input.is_action_just_pressed("Up"):
		if lane != 1 and vspeed == 0:
			lane -= 1
			$"../joueur".rotation = deg_to_rad(-15) 
			vspeed = -4
			$"./AudioStreamPlayer".play()
	
	if Input.is_action_just_pressed("Down"):
		if lane != 5 and vspeed == 0:
			lane += 1
			$"../joueur".rotation = deg_to_rad(15) 
			vspeed = 4
			$"./AudioStreamPlayer".play()
	
	if Input.is_action_pressed("Accelerate"):
		if hspeed < maxspeed:
			hspeed += 0.2
	
	if Input.is_action_pressed("Deccelerate"):
		if hspeed > 0:
			hspeed -= 0.3

func _process(_delta: float) -> void:
	$"../joueur".position.y += vspeed
	$"../joueur".position.x += hspeed
	
	if hspeed < 0:
		hspeed = 0
	
	if hspeed > maxspeed:
		hspeed = maxspeed
	
	match lane:
		1:
			vgoal = 287
		2:
			vgoal = 351
		3:
			vgoal = 415
		4:
			vgoal = 479
		5:
			vgoal = 543
	
	if $"../joueur".position.y == vgoal:
		$"../joueur".rotation = 0
		vspeed = 0
	$"./AnimatedSprite2D".play()

extends Label

func _input(_event):
	if Input.is_action_just_pressed("Choix1"):
		get_tree().change_scene_to_file("res://scenes/pieces/plaines_menthe1.tscn")
	
	if Input.is_action_just_pressed("Choix2"):
		get_tree().change_scene_to_file("res://scenes/pieces/lac_azur1.tscn")
	
	if Input.is_action_just_pressed("Choix3"):
		get_tree().change_scene_to_file("res://scenes/pieces/plaines_menthe1.tscn")
	
	if Input.is_action_just_pressed("Choix4"):
		get_tree().change_scene_to_file("res://scenes/pieces/plaines_menthe1.tscn")

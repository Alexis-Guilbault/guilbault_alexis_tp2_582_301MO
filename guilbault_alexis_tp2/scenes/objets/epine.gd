extends Node2D

func _ready() -> void:
	$Area2D.body_entered.connect(Callable(self, "_on_area_2d_body_entered"))


func _on_area_2d_body_entered(body: Node) -> void:
	print("Body entered:", body.name)

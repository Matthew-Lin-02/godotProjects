extends Node2D

var scale_vector: Vector2 = Vector2.ONE 
var scale_speed = 0.01
func _physics_process(_delta: float) -> void:
	scale += scale_vector * scale_speed
	#scale *= 1.01

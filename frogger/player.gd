extends Node2D

var direction: Vector2
var speed: int = 5 

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left","right","up","down")

	if(Input.is_action_just_pressed("confirm")):
		print("This is a good tutorial i like the exercises")
			
	position += direction * speed
 

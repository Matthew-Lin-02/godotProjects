extends CharacterBody2D

var direction: Vector2 = Vector2(1,1)
var speed: int = 200 

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	animation()
	move_and_slide()
 
func animation():
	#if direction == Vector2.LEFT || direction == Vector2.RIGHT:
		#$AnimatedSprite2D.flip_h = direction.x > 0
	#else:
		#$AnimatedSprite2D.frame = 0
	if direction == Vector2.LEFT:
		$AnimatedSprite2D.play("left")
	elif direction == Vector2.RIGHT:
		#$AnimatedSprite2D.play("right")
		$AnimatedSprite2D.animation = "right"
	elif direction == Vector2.DOWN:
		$AnimatedSprite2D.play("down")
	elif direction == Vector2.UP:
		$AnimatedSprite2D.play("up")
	else:
		$AnimatedSprite2D.frame = 0
		
		


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("body_entered")
	pass # Replace with function body.

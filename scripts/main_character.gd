extends CharacterBody2D
var only_x:bool=true

func _physics_process(delta):
	var direction=Input.get_vector("left","right","up","down")
	if only_x:
		velocity=Vector2(direction.x*200,0)
	else:
		velocity=direction*200
	move_and_slide()

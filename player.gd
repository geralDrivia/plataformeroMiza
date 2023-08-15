extends CharacterBody2D


var speed := 120

var direccion := 0.0
var jump := 250
const gravity := 9

func _physics_process(delta):
	direccion = Input.get_axis("ui_left","ui_right")
	velocity.x = direccion * speed
	
	if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
		velocity.y -= jump
	
	if !is_on_floor():
		velocity.y += gravity
	
	
	move_and_slide()

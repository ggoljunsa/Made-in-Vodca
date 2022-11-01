extends KinematicBody2D

var input_flag = false

export (int) var speed = 200

var velocity = Vector2()

func _ready():
	set_process(false)

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	if input_flag:
		get_input()
		velocity = move_and_slide(velocity)



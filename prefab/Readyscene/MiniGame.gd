extends Node2D

var player 

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node("Player")
	player.input_flag = false
	$TitleCanvas/ColorRect/Control/BGM_MiniGameStart.play()
	$TitleCanvas/ColorRect.visible = true
	$Player.set_process(false)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_BGM_MiniGameStart_finished():
	player.input_flag = true
	print_debug('true')
	$TitleCanvas/ColorRect/Control/BGM_MiniGameStart.playing = false
	$TitleCanvas/ColorRect.visible = false
	$Player.set_process(true)
	pass # Replace with function body.



func _on_Goal_body_entered(body):
	$TitleCanvas/ColorRect/Control/BGM_Success.play()
	pass # Replace with function body.


func _on_Obstacle_body_entered(body):
	$TitleCanvas/ColorRect/Control/BGM_Failure.play()
	pass # Replace with function body.



func _on_BGM_Success_finished():
	
	pass # Replace with function body.


func _on_BGM_Failure_finished():
	pass # Replace with function body.

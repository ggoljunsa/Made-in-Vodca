extends Control

var scene_path_to_load

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Menu/CenterRow/Buttons/NewGameButton.grab_focus()
	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])


func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
	$Fadein.show()
	$Fadein.fade_in()


func _on_Fadein_fade_finished():
	var _temp = get_tree().change_scene(scene_path_to_load)

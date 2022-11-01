extends Control

var scene_path_to_load
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Opt_Bck_Btn.grab_focus()
	for button in $VBoxContainer.get_children():
		if button is Button:
			button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
	


func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
	var temp = get_tree().change_scene(scene_path_to_load)


func _on_HSlider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"),
								linear2db(value))

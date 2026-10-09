extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _unhandled_input(_event):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = true
		visible = true


func _on_unpause_pressed() -> void:
	visible = false
	get_tree().paused = false # Replace with function body.

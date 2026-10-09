extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$Button.signal.connect(_on_pressed()) # Replace with function body.
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_pressed() -> void:
	get_tree().quit() 

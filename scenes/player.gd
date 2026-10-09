extends RigidBody2D

var inputs = {"mRight": Vector2.RIGHT, "mLeft": Vector2.LEFT}
signal money

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var playerPos = global_position
	money.emit(playerPos)

func _physics_process(_delta: float) -> void:
	for direction in inputs.keys():
		if Input.is_action_pressed(direction):
			movement(direction)
	
	
func movement(direction):
	apply_central_force(inputs[direction] * 3500)
func _unhandled_input(_event: InputEvent):
	if Input.is_action_just_pressed("jump") && get_contact_count(): #find a way to make sure player is colliding with ground
		apply_impulse(Vector2.UP * 500)



func _on_deathbox_body_entered(_body: Node2D) -> void:
	get_tree().reload_current_scene.call_deferred()

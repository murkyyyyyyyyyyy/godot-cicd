extends TileMapLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_player_money(playerPos) -> void:
	var local_pos = to_local(playerPos)
	var coords = local_to_map(local_pos)
	if(get_cell_tile_data(coords) != null):
		if (get_cell_tile_data(coords).get_custom_data("coin")):
			set_cell(coords, 0)

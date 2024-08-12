extends Node2D

@onready var tile_map : TileMap = $TileMap

# Declare Variables
var ground_layer = 0

		
func _input(_event):
	# Testing Input
	if Input.is_action_just_pressed("left_click"):
		
		# Get mouse position, convert global -> local for cleaner integers
		var mouse_pos : Vector2 = get_global_mouse_position()
		var tile_mouse_pos : Vector2i = tile_map.local_to_map(mouse_pos)
		# Grass Tileset
		var source_id : int = 0
		# Non-Navigation Layer grass tile
		var atlas_coord : Vector2i = Vector2i(24,5)
		
		# Change cell to non navigation	
		tile_map.set_cell(ground_layer, tile_mouse_pos, source_id, atlas_coord)
		
		
		#print ("local position", tile_mouse_pos)
	
	#if Input.is_action_just_pressed("right_click"):
		#print("R_Click")



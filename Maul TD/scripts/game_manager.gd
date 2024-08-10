extends Node


@onready var tile_map = $TileMap


func _ready():
	pass
		
func _input(event):
	if Input.is_action_just_pressed("click"):
		print("Click") 
	

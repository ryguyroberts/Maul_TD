extends Area2D

var default_rotation = PI / 2
# 20.43
@onready var animated_sprite : AnimatedSprite2D = $"2DWeaponPivot/AnimatedSprite2D"


func _physics_process(_delta):
	var enemies_in_range: Array[Node2D] = get_overlapping_bodies()
	
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)
		animated_sprite.play("shoot")
	else:
		rotation = default_rotation
		animated_sprite.play("idle")

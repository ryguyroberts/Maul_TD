extends CharacterBody2D

const speed = 20

@export var marker_end_zone: Marker2D
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D

func _physics_process(_delta: float):
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()
	
func makepath():
	nav_agent.target_position = marker_end_zone.global_position

func _on_timer_timeout():
	makepath()

extends Marker2D

@export var marker_end_zone: Marker2D
@onready var nav_agent : NavigationAgent2D = $NavigationAgent2D

func makepath():
	# Set nav agent target to end zone marker
	var end_zone_global = marker_end_zone.global_position
	nav_agent.target_position = end_zone_global
	
	#True final location
	var nav_final_pos : Vector2 = nav_agent.get_final_position()
	
	if nav_final_pos == end_zone_global:
		pass
		print("Path free")
	else:
		pass
		print("Path Blocked")
	


# Test function with Timer,
# Then call the method when we are placing a tower.

func _on_timer_timeout():
	makepath()
	

extends Marker2D

@export var marker_end_zone: Marker2D
@onready var nav_agent : NavigationAgent2D = $NavigationAgent2D



# Load Nav agent
# Set a target point for nav agent

func _ready():
	makepath()
	
# Create a function that can be called to run the path,
# Potentially the method that returns parents co-ordinates if no route?
func makepath():
	nav_agent.target_position = marker_end_zone.global_position
	var final_pos : Vector2 = nav_agent.get_final_position()
	print("final_pos", final_pos)

# Test function with Timer,

# Then call the method when we are placing a tower.

func _on_timer_timeout():
	makepath()
	

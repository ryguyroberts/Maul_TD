extends CharacterBody2D

const speed = 20

# Not sure if export will work when  they are being auto spawned, not spawned in initially
@onready var marker_end_zone = %MarkerEndZone
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D

func _ready():
	set_physics_process(false)
	call_deferred('setup')
	makepath()
	
func _physics_process(_delta: float):
	# Direction comes from Nav Agent
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity = dir * speed
	move_and_slide()
	
func makepath():
	nav_agent.target_position = marker_end_zone.global_position

func setup():
	await get_tree().physics_frame
	set_physics_process(true)

func _on_timer_timeout():
	makepath()

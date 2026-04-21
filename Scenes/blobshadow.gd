extends RayCast3D

@export var player : CharacterBody3D
@onready var blobshadow = $MeshInstance3D

func _process(delta):
	global_position = player.global_position
	
	if is_colliding():
		blobshadow.global_position = get_collision_point()

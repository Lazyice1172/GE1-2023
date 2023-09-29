extends CharacterBody3D

@export var move_sp:float = 5
@export var rt_sp:float = 5

func _process(delta):	
		
		var move = Input.get_axis("move_forward", "move_backward")
		var rt = Input.get_axis("rt_left", "rt_right")
		
		translate(Vector3.FORWARD * move *move_sp * delta)
		
		rotate(Vector3.UP, rt * rt_sp * delta)

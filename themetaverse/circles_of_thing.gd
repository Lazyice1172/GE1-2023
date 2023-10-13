extends Node3D


@export var dodScene:PackedScene

@export var num_dodScene = 5
@export var r = 5
@export var num_loops = 10

func _ready():
	
	var theta_inc = (2.0 * PI) / num_dodScene
	
	for j in num_loops:
		
		num_dodScene = 2.0 * PI * r * (j + 1 )
		r = j
		
		for i in num_dodScene:
			var james = dodScene.instantiate()
			
			var theta = theta_inc * i
		
			var pos = Vector3(sin(theta) * r, 0, cos(theta) * r)
			
			james.transform.origin = pos
			
			var newMaterial = StandardMaterial3D.new()
			
			var h = float(i) / num_dodScene
			print(h)
			
			newMaterial.albedo_color = Color.from_hsv( h, 1, 1, 0.8)
			james.get_node("MeshInstance3D").material_override = newMaterial
			
			add_child(james)

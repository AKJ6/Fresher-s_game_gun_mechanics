extends RigidBody2D

var count := 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_area_entered(area):
	print_debug("col")
	var gun_path =preload("res://Gun.tscn")
	var gun = gun_path.instantiate()
	print_debug(area)
	area.add_child(gun)
	queue_free()

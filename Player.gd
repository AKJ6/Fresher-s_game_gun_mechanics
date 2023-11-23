extends RigidBody2D

const bullet_path =preload("res://bullet.tscn")

@export var r = Area2D	
@export var a:float

	
	
func _process(delta)->void:	
	if Input.is_action_pressed("ui_left"):
		apply_central_impulse(Vector2(-4400.0,0)*delta)
	if Input.is_action_pressed("ui_right"):
		apply_central_impulse(Vector2(4400.0,0)*delta)
	#$Node2D.look_at(get_global_mouse_position())
#function to fire the gun
"""func _shoot():
	var bullet = bullet_path.instantiate()
	var  timer=Timer.new()
	timer.set_wait_time(3000)
	timer.start()
	get_parent().add_child(bullet)
	print_debug($Node2D/Marker2D)
	bullet.position = $Node2D/Marker2D.global_position
	print_debug(bullet.position)
	print_debug(get_global_mouse_position())
	bullet.Velocity=(get_global_mouse_position()-bullet.position)
	apply_central_impulse(-(get_global_mouse_position()-bullet.position).normalized()*1000)
	if bullet.Velocity==Vector2(0,0):
		bullet.queue_free()"""

	

	

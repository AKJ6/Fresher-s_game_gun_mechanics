extends Node2D
const bullet_path =preload("res://bullet.tscn")
@export var recoil=1000
@export var speed =100
func _on_timer_timeout():

	if Input.is_action_pressed("mouse1"):
	
		_shoot()
	
func _process(delta)->void:
	
	#JoJo is the best
	#mouse1 is left click
	
	"""if Input.is_action_just_pressed("mouse1"):
	
		_shoot()
	"""
		
	
		
	
	self.look_at(get_global_mouse_position())
#function to fire the gun
func _shoot():
	var bullet = bullet_path.instantiate()
	get_parent().get_parent().get_parent().add_child(bullet)
	bullet.position = $Node2D/Marker2D123.global_position
	bullet.Velocity=(get_global_mouse_position()-bullet.position)*speed
	bullet.apply_central_force(bullet.Velocity)
	get_parent().get_parent().apply_central_impulse(-(get_global_mouse_position()-bullet.position).normalized()*recoil)
	"""if bullet.Velocity==Vector2(0,0):
		bullet.queue_free()"""

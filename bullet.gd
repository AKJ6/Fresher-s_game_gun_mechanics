extends RigidBody2D

var Velocity =Vector2(1,0)
@export var speed = 59



func _physics_process(delta):
	

	var col = move_and_collide(Velocity.normalized()*speed*delta*speed)
	


func _on_area_2d_area_entered(area):
	queue_free()

	

func _on_timer_timeout():
	pass # Replace with function body.

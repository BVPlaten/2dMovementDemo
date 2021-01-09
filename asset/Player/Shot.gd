extends KinematicBody2D

var is_fired = false				# indicator if the ship is firering
var velocity = Vector2()
var speed = 23

# the function receives the ship as parameter ; puts the shoot 
# on the place where the ship is and corrects the rotation
func fire_it(ship):
	self.global_rotation = ship.global_rotation
	self.global_position = ship.global_position  
	is_fired = true
	
	
	
func _physics_process(delta):
	velocity = velocity.direction_to(self.global_position * 23)
	move_and_slide(velocity * speed)
#	velocity = move_and_slide(velocity * delta)
#	if !$VisibleCheck.is_on_screen():
#		velocity = Vector2(0,0)
#		is_fired = false
#		return





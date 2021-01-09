extends KinematicBody2D

export var is_fired = false				# indicator if the ship is firering

# the function receives the ship as parameter ; puts the shoot 
# on the place where the ship is and corrects the rotation
func fire_it(ship):
	self.global_rotation = ship.global_rotation
	self.global_position = ship.global_position
	is_fired = true
	
func _physics_process(delta):
	if !is_fired
		return
	if !$VisibleCheck.is_on_screen():
		return





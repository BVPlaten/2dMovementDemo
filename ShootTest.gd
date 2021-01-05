extends Node2D

onready var ship = get_node("RotateAndMove")
onready var shoot = get_node("Shuss")

# Called when the node enters the scene tree for the first time.
func _ready():
	print(ship.name)
	print(shoot.name)

func get_input():
	if Input.is_action_just_pressed('fire'):
		print("FIRE!!")
		shoot.global_position = ship.global_position 

func _physics_process(delta):
	get_input()
	# todo hier kommt der schuss in eine vom schiff gegebene richtung rein
	#shoot.rotation = ship.rotation
	#shoot.global_position = ship.global_position
	pass
	

	









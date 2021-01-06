extends Node2D

var ship
var shoot
var showShipPos
var showFirePos
var showShipRot
var showFireRot


# Called when the node enters the scene tree for the first time.
func _ready():
	show_info()
	
func show_info():
	$SchiffAnzeige/Key.text = "Schiff"
	$SchiffAnzeige/Value1.text = str($RotateAndMove.global_position.x)
	$SchiffAnzeige/Value2.text = str($RotateAndMove.global_position.y)
	$SchussAnzeige/Key.text = "Schuss"
	$SchussAnzeige/Value1.text = str($Shuss.global_position.x)
	$SchussAnzeige/Value2.text = str($Shuss.global_position.y)
	$SchiffWinkelAnzeige/Key.text = "Winkel Schiff ° "
	$SchiffWinkelAnzeige/Value.text = str($RotateAndMove.rotation_degrees)
	$SchussWinkelAnzeige/Key.text = "Winkel Schuss ° "
	$SchussWinkelAnzeige/Value.text = str($Shuss.rotation_degrees)

func get_input():
	if Input.is_action_pressed('fire'):
		$Shuss.global_position = $RotateAndMove.global_position 

# get gemoetry data and put it on the screen
func get_geom():
	pass
	
func _physics_process(delta):
	get_input()
	show_info()
	







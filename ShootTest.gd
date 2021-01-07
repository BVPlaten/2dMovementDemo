extends Node2D

var speed = 200
var rotation_speed = 1.5
var velocity = Vector2.ZERO
var rotation_dir = 0

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
		var posShip = $RotateAndMove.global_position
		posShip.y = posShip.y + 50
		#$Shuss.global_position = $RotateAndMove.global_position
		$Shuss.global_position = posShip
		$Shuss.rotation_degrees = $RotateAndMove.rotation_degrees 
		return true
	return false
	
	
func _physics_process(delta):
	var shouldMove = get_input()
	show_info()
	#if shouldMove == true:
	#	velocity += $Shuss.transform.x * speed
	#	velocity = $Shuss.move_and_slide(velocity)
		
	







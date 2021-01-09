extends Node2D

var speed = 200
var rotation_speed = 1.5
var velocity = Vector2.ZERO
var rotation_dir = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func show_info():
	$SchiffPos/Key.text = "SHIP POS:"
	$SchiffPos/Value1.text = str($RotateAndMove.global_position.x)
	$SchiffPos/Value2.text = str($RotateAndMove.global_position.y)
	$SchiffScale/Key.text = "SHIP SCALE:"
	$SchiffScale/Value1.text = str($RotateAndMove.scale.x)
	$SchiffScale/Value2.text = str($RotateAndMove.scale.y)
	$SchussPos/Key.text = "BALL POS."
	$SchussPos/Value1.text = str($Shuss.global_position.x)
	$SchussPos/Value2.text = str($Shuss.global_position.y)
	$SchussScale/Key.text = "BALL SCALE"
	$SchussScale/Value1.text = str($Shuss.global_scale.x)
	$SchussScale/Value2.text = str($Shuss.global_scale.y)
	$SchiffWinkelAnzeige/Key.text = "Winkel Schiff ° "
	$SchiffWinkelAnzeige/Value.text = str($RotateAndMove.rotation_degrees)
	$SchussWinkelAnzeige/Key.text = "Winkel Schuss ° "
	$SchussWinkelAnzeige/Value.text = str($Shuss.rotation_degrees)

func get_input():
	if Input.is_action_pressed('fire'):
		$Shuss.fire_it($RotateAndMove)
		return true
	return false
	
	
func _physics_process(delta):
	var shouldMove = get_input()
	show_info()
	#if shouldMove == true:
	#	velocity += $Shuss.transform.x * speed
	#	velocity = $Shuss.move_and_slide(velocity)
		
	







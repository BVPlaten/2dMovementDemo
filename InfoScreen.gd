extends VBoxContainer

export var LableValues = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	LableValues = {
		"schiff_x" : get_node("Schiff/Line_01/Value"),
		"schiff_y" : get_node("Schiff/Line_02/Value"),
		"schiff_g" : get_node("Schiff/Line_03/Value"),
		"blast_x"  : get_node("Schiff/Line_01/Value"),
		"blast_y"  : get_node("Schiff/Line_02/Value"),
		"blast_g"  : get_node("Schiff/Line_03/Value")
	} 
	LableValues["schiff_y"].text = "47 PIXEL"
	LableValues["schiff_g"].text = "180°"

func refresh_data(key,value):
	LableValues[key].text = value


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

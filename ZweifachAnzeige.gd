extends HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# if the node is a lable this function changes the text of it
func set_text( ky , vl ):
	var change = get_node(ky)
	if change.get_class() == "Label":
		change.text = vl 
	

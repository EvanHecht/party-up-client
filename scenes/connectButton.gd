extends Button

signal connect_pressed(connected)

# Declare member variables here. Examples:
var connected = false

# Called when the node enters the scene tree for the first time.
func _ready():
	var node = get_parent().get_parent()
	node.connect("connection_toggled", self, "_on_connection_toggled")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _pressed():
	emit_signal("connect_pressed", connected)

func _on_connection_toggled():
	connected = !connected
	if connected:
		text = "Disconnect"
	else:
		text = "Connect"

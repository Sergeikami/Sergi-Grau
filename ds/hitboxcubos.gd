extends Area2D


# Declare member variables here. Examples:
# var a = 2
var x = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_hitboxcubitos_body_entered(body):
	var k = get_node("/root/Node2D/KinematicBody2D")
	k.position = Vector2(0,0)
	

extends KinematicBody2D

var moviment := Vector2.RIGHT 
var velocitat := 15000
var direccio := Vector2.RIGHT
var salt := Vector2.UP * 500
var gravetat := Vector2.DOWN * 1000



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment.x = velocitat * delta
	moviment += gravetat * delta

	if Input.is_action_just_pressed('espai') and is_on_floor():
		moviment += salt
	
	moviment = move_and_slide(moviment, Vector2.UP)

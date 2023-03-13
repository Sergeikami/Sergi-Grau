extends KinematicBody2D

var velocitat := 500
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 200
var salt := Vector2.UP * 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	moviment += gravetat * delta
	
	moviment.x = Input.get_axis('ves_esquerra','ves_dreta') * velocitat
	
	moviment = move_and_slide(moviment, Vector2.UP)
	
	if is_on_floor():
		$Label.text = 'Ja no salto'
	
	if Input.is_action_just_pressed("ves_adalt") and is_on_floor():
		moviment += salt
		$Label.text = 'Salt'


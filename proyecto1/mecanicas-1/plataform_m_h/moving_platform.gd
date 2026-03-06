extends AnimatableBody2D

@export var speed: float = 50

@export var distance: float = 100.0

var start_x: float
var direction: int = 1

func _ready():
	start_x = position.x
func _physics_process(delta):
	position.x += speed * direction * delta
	
	if position.x > start_x + distance:
		direction = -1
		
	elif position.x < start_x:
		direction = 1

extends AnimatableBody2D

@export var speed: float = 50

@export var distance: float = 100

var start_y: float
var direction: int = 1

func _ready():
	start_y = position.y
func _physics_process(delta):
	position.y += speed * direction * delta
	
	if position.y > start_y + distance:
		direction = -1
		
	elif position.y < start_y:
		direction = 1

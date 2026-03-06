extends Node2D


@export var speed: float = 25

@export var distance: float = 40


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


func _on_dirt_pinchos_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().reload_current_scene()

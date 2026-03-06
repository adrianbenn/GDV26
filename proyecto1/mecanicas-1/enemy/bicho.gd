extends Node2D
@export var speed: float = 25

@export var distance: float = 20

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


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.velocity.y=-300
		queue_free() #desaparece el enemigo


func _on_down_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().reload_current_scene()

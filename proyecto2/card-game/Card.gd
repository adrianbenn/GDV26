extends Node2D

signal hovered
signal hovered_off

var starting_position


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#all card must be a child at cardManager at this 
	get_parent().connect_card_signals(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#detecta si el mouse se pose sobre la carta
func _on_area_2d_mouse_entered() -> void:
	emit_signal("hovered" , self)

#detecta si el mouse sale de la carta
func _on_area_2d_mouse_exited() -> void:
	emit_signal("hovered_off" , self)

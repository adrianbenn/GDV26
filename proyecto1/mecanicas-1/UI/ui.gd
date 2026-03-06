extends CanvasLayer

@onready var piquillin_label = $Control/Label

func set_piquillin(amount):
	piquillin_label.text=str(amount)

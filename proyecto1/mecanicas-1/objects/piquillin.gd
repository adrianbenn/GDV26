extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"): #verifica colision con el pleyer
		body.add_piquillin()
		queue_free() #destruye moneda

extends Spatial

var speed = 30  # Velocidad de la bala

func _process(delta):
	translation.z += speed * delta

	# Eliminar la bala cuando está fuera de la pantalla
	if translation.z < -50:
		queue_free()

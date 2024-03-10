extends RigidBody  # Asumiendo que la bala requiere física, si no, cambia a Spatial

var speed = 30.0  # Velocidad de la bala

func _ready():
	set_process(true)

func _process(delta):
	# Mover la bala en la dirección especificada por su velocidad
	translation += Vector3(0, 0, -speed * delta)

	# Si la bala sale fuera de la pantalla, destruirla
	if translation.z < -100:
		queue_free()

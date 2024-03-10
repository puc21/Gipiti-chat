extends RigidBody3D

var speed = 30.0  # Velocidad de la bala

func _ready():
	set_process(true)

func _process(delta):
	# Mover la bala en la dirección especificada por su velocidad
	global_transform.origin += Vector3(0, 0, -speed * delta)

	# Si la bala sale fuera de la pantalla, destruirla
	if global_transform.origin.z < -100:
		queue_free()

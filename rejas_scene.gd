extends StaticBody2D  

@onready var jefe_sirena = $"../Sirena"
@onready var jefe_pirata = $"../BigGuy"

func _ready():
	pass

func _process(delta):
	# Verifica continuamente si la Sirena está muerta
	if jefe_sirena != null && jefe_sirena.die:
		queue_free()  # Elimina la reja
	if jefe_pirata != null && jefe_pirata.die:
		queue_free()  # Elimina la reja

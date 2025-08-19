extends RigidBody2D

func _ready():
	var tipo_carros = $Animacao.sprite_frames.get_animation_names()
	var carro = tipo_carros[randi() % tipo_carros.size()]
	$Animacao.animation = carro

func _on_Notificador_screen_exited():
	queue_free()

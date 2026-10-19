class_name EnemyBreaker
extends Enemy
## Novo inimigo "Quebra-Gelo": enxerga ATRAVÉS do gelo e, ao perseguir, destrói os blocos que o separam do jogador.
## Esconder-se atrás de gelo não funciona contra ele: use a velocidade e o mapa a seu favor.


func _ready() -> void:
	breaks_ice = true
	chase_speed = 85.0
	super._ready()
	$SightRay.set_collision_mask_value(2, false)   # camada 2 = ice: o raio ignora o gelo

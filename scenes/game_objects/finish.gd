extends Area2D

@export var target_level : PackedScene
@onready var game_manager: Node = %GameManager

func _process(delta):
	if game_manager.points < 12:
		$Sprite2D.modulate = Color(1, 0, 0)
		$CollisionShape2D.disabled = true
	else:
		$Sprite2D.modulate = Color(1, 1, 1)
		$CollisionShape2D.disabled = false
func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		get_tree().change_scene_to_packed(target_level)

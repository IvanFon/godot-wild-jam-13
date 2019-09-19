extends Control

export (PackedScene) var GameScene: PackedScene

func _ready() -> void:
	$TextureRect/AnimationPlayer.play('title_spin')

func _on_StartButton_pressed() -> void:
	get_tree().change_scene_to(GameScene)
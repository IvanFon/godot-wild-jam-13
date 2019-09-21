extends Control

export (String, FILE) var GameScene: String
export (Array, Dictionary) var completed_labels: Array

const COL_COMPLETED = Color('41ce24')

func _ready() -> void:
	for level in completed_labels:
		if level['num'] in get_node("/root/Global").completed:
			var label = get_node(level['node']) as Label
			label.add_color_override("font_color", COL_COMPLETED)


func start_level(level: int) -> void:
	get_node('/root/Global').level = level
	get_tree().change_scene(GameScene)


func _on_StartButton1_pressed() -> void:
	start_level(1)


func _on_StartButton2_pressed() -> void:
	start_level(2)


func _on_StartButton3_pressed() -> void:
	start_level(3)

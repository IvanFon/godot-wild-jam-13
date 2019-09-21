extends Control

export (Array, Dictionary) var completed_labels: Array

const COL_COMPLETED = Color('41ce24')

func _ready() -> void:
	for level in completed_labels:
		if level['num'] in get_node("/root/Global").completed:
			var label = get_node(level['node']) as Label
			label.add_color_override("font_color", COL_COMPLETED)

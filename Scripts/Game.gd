extends Control

const LINE_ADD_COLOUR = Color('#2ecc71')
const LINE_REMOVE_COLOUR = Color('#e74c3c')
const LEVELS = [
	preload('res://Levels/1.gd'),
]

onready var curLevel = get_node("/root/Global").level
onready var curDiff = 0
onready var DiffText = $PullRequest/DiffText
onready var level = LEVELS[curLevel - 1]

func _ready() -> void:
	# Setup syntax highlighting
	DiffText.add_color_region('+', '', LINE_ADD_COLOUR)
	DiffText.add_color_region('-', '', LINE_REMOVE_COLOUR)
	
	# Load level
	$OrigText.text = level.DATA.orig
	$DescriptionText.text = level.DATA.problem
	$PullRequest/DiffText.text = level.DATA.diffs[curDiff].diff
	$Timer.wait_time = level.DATA.time
	$TimeLabel.set_text(String($Timer.wait_time) + ' seconds')


func next_diff(correct: bool) -> void:
	if curDiff == len(level.DATA.diffs) - 1:
		next_level()
	else:
		if correct:
			$OrigText.text = level.DATA.diffs[curDiff].code
		
		curDiff += 1
		$PullRequest/DiffText.text = level.DATA.diffs[curDiff].diff


func game_over() -> void:
	OS.alert('Game over!')


func next_level() -> void:
	OS.alert('You win!')


func _on_Timer_timeout() -> void:
	game_over()


func _on_StartButton_pressed() -> void:
	$Timer.start()
	$LabelTimer.start()
	$Start.visible = false
	$PullRequest.visible = true


func _on_MergeButton_pressed() -> void:
	if level.DATA.diffs[curDiff].correct:
		next_diff(true)
	else:
		game_over()


func _on_CloseButton_pressed() -> void:
	if not level.DATA.diffs[curDiff].correct:
		next_diff(false)
	else:
		game_over()


func _on_LabelTimer_timeout() -> void:
	var time_left = round($Timer.time_left)
	if time_left < 10:
		$TimeLabel.set_text('0' + String(time_left) + ' seconds')
	else:
		$TimeLabel.set_text(String(time_left) + ' seconds')

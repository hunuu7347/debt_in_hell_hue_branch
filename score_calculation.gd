extends TextEdit

var score: int = 0
var high_score: int = 0

signal score_changed(new_score: int)

func add_score(amount: int) -> void:
	score += amount
	if score > high_score:
		high_score = score

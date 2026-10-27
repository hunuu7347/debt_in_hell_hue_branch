extends TextEdit

var cruelty_score: int = 0
var cruelty_high_score: int = 0

signal score_changed(new_score: int)

func add_score(amount: int) -> void:
	cruelty_score += amount
	if cruelty_score > cruelty_high_score:
		cruelty_high_score = cruelty_score

extends Node

func _draw () -> void:
	
	for x in range(3):
		for y in range(3):
			print("(%d, %d)" % [x, y])
		print()

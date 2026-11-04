# Healing
# Concepts: Function parameters and return values, integer arithmetic, clamp(), maximum healh boundaries,reusing logic from previous exercises.

# Scenario:
	# Your hero finds a health potion.
	# The potion restores a certain amount of health, but the hero cannot exceed their maximum health.

# Requirements:
	# Create a function called heal.
	# It must:
		# Receive current_health as an integer.
		# Receive healing_amount as an integer.
		# Receive max_health as an integer.
		# Add the healing amount to current health.
		# Prevent health from exceeding maximum health.
		# Return the resulting health as an integer.

extends SceneTree

func _init():
	print (heal(40, 30, 100))
	print (heal(90, 30, 100))
	print (heal(50, 50, 100))
	print (heal(1, 10, 100))
	print (heal(0, 25, 100))
	print (heal(100, 20, 100))
	print (heal(20, 0, 100))

func heal(current_health: int, healing_amount:int, max_health: int) -> int:
	var new_heal: int = current_health + healing_amount

	return clamp(new_heal, 0, max_health)

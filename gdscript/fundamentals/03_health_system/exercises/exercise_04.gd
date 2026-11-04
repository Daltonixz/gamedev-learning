# Complete Health System
# Concept: variables, constants, functions, parameters, return values, conditions, state management.

# Scenario:
	# Imagine a hero starts with 100 HP.
		# During the game:
		# An enemy deals 30 damage.
		# The hero drinks a potion that restores 20 HP.
		# Another enemy deals 50 damage.
		# The hero drinks another potion that restores 40 HP.
		# The hero receives 100 damage.
	# Your system must correctly track the hero's health throughout the entire sequence.

# Requirements:
	# Part A - Health variables:
		# Create max_health as an integer constant with value 100.
		# Create current_health as an integer variable initialized to max_health.
	# Part B - Take damage:
		# Create a function called take_damage.
		# It must receive damage as an integer.
		# It must:
			# Subtract damage from current_health.
			# Prevent health from dropping below zero.
			# Update current_health itself.
			# Print the resulting health.
	# Part C - Heal:
		# Create a function called heal.
		# It must reaceive healing_amount as an integer.
		# It must:
			# Add healing to current_health.
			# Prevent health from exceeding max_health.
			# Update current_health itself.
			# Print the resulting health.
	# Part D - Check whether the hero is alive:
		# Create a function called is_alive.
		# It must:
			# Return true if current health is greater than zero.
			# Return false otherwise.
	# Part E - Test the system
		# Execute the following sequence:
			#take_damage(30)
			#heal(20)
			#take_damage(50)
			#heal(40)
			#take_damage(100)

			#print(is_alive())

extends SceneTree

const max_health: int = 100
var current_health: int = max_health

func _init():
	print ("Starting health: ", current_health)

	take_damage(30)
	heal(20)
	take_damage(50)
	heal(40)
	take_damage(100)

	print ("Is hero alive? ", is_alive())

func take_damage(damage: int) -> void:

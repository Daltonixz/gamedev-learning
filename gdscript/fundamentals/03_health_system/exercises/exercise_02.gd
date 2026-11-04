# Taking Damage
# Concepts: Function parameters and return values, integer arithmetic, conditions, clamp() - restricts a value to a specified range, health validation

# Scenario:
	# Your hero has a health system.
	# An enemy attacks the hero, and your job is to calculate the hero's remaining health.

# Requirements:
	# Create a function called take_damage
	# It must:
		# Receive current_health as an integer.
		# Receive damage as an integer.
		# Subtract damage from current health.
		# Prevent health from going below zero.
		# Return the resulting health as an integer

extends SceneTree

func _init():
	print(take_damage(100, 30))
	print(take_damage(100, 100))
	print(take_damage(100, 150))
	print(take_damage(50, 10))
	print(take_damage(10, 25))
	print(take_damage(1, 1))
	print(take_damage(0, 10))

func take_damage(current_health: int,damage: int ) -> int:
	var health: int = current_health - damage

	return clamp(health, 0, 100)

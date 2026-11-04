# Health Validator
# Concepts: Functions and parameters, integer variables, conditions, boolean return values, logical operators.

# Requirements:
	# Create a function called is_health_valid
	# It must:
		# Receive current_health as an integer
		# Receive max_health as an integer
		# Conditions:
			# Maximum health must be greater than zero.
			# Current health cannot be negative.
			# Current health cannot exceed maximum health.
		# Return true if all three conditions are satisfied.
		# Return false otherwise

extends SceneTree

func _init():
	print(is_health_valid(100, 100))
	print(is_health_valid(50, 100))
	print(is_health_valid(1, 100))
	print(is_health_valid(0, 100))
	print(is_health_valid(-10, 100))
	print(is_health_valid(120, 100))
	print(is_health_valid(50, 0))
	print(is_health_valid(50, -100))

func is_health_valid(current_health: int, max_health: int) -> bool:
	# Could be:
		#var maximum_is_valid: bool = max_health > 0
		#var current_is_valid: bool = current_health >= 0
		#var health_is_within_limit: bool = current_health <= max_health

	# And then combine them:
		#return maximum_is_valid and current_is_valid and health_is_within_limit
	var maximum_is_valid: bool = false
	var current_is_valid: bool = false
	var health_is_within_limit: bool = false

	if max_health > 0 and current_health >= 0 and current_health <= max_health:
		maximum_is_valid = true
		current_is_valid = true
		health_is_within_limit = true
	return health_is_within_limit

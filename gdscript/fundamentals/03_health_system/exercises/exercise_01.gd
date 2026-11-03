# Health Validator
# Concepts: Functions and parameters, integer variables, conditions, boolean return values, logical operators.

# Requirements:
	# Create a function called is_health_valid
	# It must:
		# Receive current_health as an integer
		# Receive max_health as an integer
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
	var health_is_valid: bool = false
	var min_health: int = 0
	var max_valid_health: int = 0
	var health = max_health and current_health

	if current_health >= min_health and max_health <= max_valid_health and current_health <= max_health:
		clamp(current_health, 0, 100)
		clamp(max_health, 0, 100)
		health_is_valid = true
	return health_is_valid

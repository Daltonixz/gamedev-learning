# Potion Usage Validator
# Concepts: Functions and multiple parameters, integer and boolean data types, boolean return values, comparison operators, logical "and" operators, cconditions

# Requirements:
	# Create a function called can_use_potion().
	# It must:
		# Receive health: int as an integer.
		# Receive max_health: int as an integer.
		# Receive potions: int as an integer.
		# Return true if Hero is alive (health > 0).
		# Return true if Hero is not at maximum health (health < max_health).
		# Return true if Hero has at least one potion (potion >= 1).
		# Otherwise, return false.

extends SceneTree

#func _init():
	#print(can_use_potion(50, 100, 2))
	#print(can_use_potion(100, 100, 2))
	#print(can_use_potion(0, 100, 2))
	#print(can_use_potion(50, 100, 0))
	#print(can_use_potion(80, 100, 1))

#func can_use_potion(health: int, max_health: int, potions: int) -> bool:
	#var is_alive: bool = health > 0
	#var needs_healing: bool = health < max_health
	#var has_potions: bool = potions >= 1

	#return is_alive and needs healing and has_potions


	#return health > 0 and health < max_health and potions >= 1

func _init():
	print(can_use_potion_advanced(50, 100, 2))
	print(can_use_potion_advanced(100, 100, 2))
	print(can_use_potion_advanced(0, 100, 2))
	print(can_use_potion_advanced(50, 100, 0))
	print(can_use_potion_advanced(150, 100, 2))
	print(can_use_potion_advanced(50, -100, 2))
	print(can_use_potion_advanced(-10, 100, 2))
	print(can_use_potion_advanced(50, 200, 1))
	print(can_use_potion_advanced(100, 100, 1))

func can_use_potion_advanced(health: int, max_health: int, potions: int) -> bool:
	# Requirements:
		# Reject maximum health value that are zero or negative.
		# Reject heroes whose health is zero or negative.
		# Reject heroes whose health exceeds maximum health.
		# Reject heroes with zero or fewer potions.
		# Return true only when the hero has valid health, needs healing, and owns at least one potion.

	var normal_max_health: bool = max_health > 0
	var is_alive: bool = health > 0
	var has_valid_health: bool = health <= max_health
	var needs_healing: bool = health < max_health
	var has_potions: bool = potions >= 1

	return is_alive and has_valid_health and normal_max_health and needs_healing and has_potions

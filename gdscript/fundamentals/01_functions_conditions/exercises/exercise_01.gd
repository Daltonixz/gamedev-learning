# Is the Enemy Deafeated?
# Concepts: Functions and parameters, integer data types, boolean return values, conditions, comparison operators, return keyword
#
# # Enemy is defeated if health: int is equal or below of 0
#
# # Requirements:
	# Create a function called is_enemy_defeated().
	# It must:
		# Receive the enemy's health as an integer.
		# Return true if the enemy's health is less than or equal to 0.
		# Return false if the enemy's health is greater than 0.

extends SceneTree

func _init() -> void:
	print (is_enemy_defeated(0))

func is_enemy_defeated(health: int) -> bool:
	return health <= 0

# Can the Hero Attack?
# Concepts: Functions, parmeters, Boolean returns, conditions, "and".

# Hero can attack only if:
	# The hero is alive.
	# The hero has at least 10 of stamina.
	# The hero is not stunned.

# Requirements:
	# Create a function called can_hero_attack().
	# it must:
		# Receive health as an integer.
		# Receive stamina as an integer.
		# Return "true" if both requirements are satisfied.
		# Otherwise returns "false".
		# Extra requirement: check if the hero is stunned.

extends SceneTree

func _init():
	print(can_hero_attack(100, 50, false))
	print(can_hero_attack(100, 5, true))
	print(can_hero_attack(0, 50, false))
	print(can_hero_attack(0, 0, true))
	print(can_hero_attack(20, 10, false))

func can_hero_attack(health: int, stamina: int, is_stunned: bool) -> bool:
	return health > 0 and stamina >= 10 and is_stunned == false
	# In Godot you can use not to check a condition
	#return health > 0 and stamina >= 10 and not is_stunned

# Extra challenge:
	# Add a third condition for the hero to attack

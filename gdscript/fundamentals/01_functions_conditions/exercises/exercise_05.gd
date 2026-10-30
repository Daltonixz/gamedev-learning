# Can the Hero Equip a Weapon

# Requirements:
	# Create a function called can_equip_weapon()
	# It must:
		# Receive level: int as an integer.
		# Receive required_level: int as an integer.
		# Receive has_weapon:bool as a boolean.
		# Return false if the hero's level is zero or negative.
		# Return false if the hero's level is lower than the weapon's required level.
		# Return false if the hero does not own the weapon.
		# Return true only if all requirements are satisfied.

extends SceneTree

func _init():
	print(can_equip_weapon(10, 5, true))
	print(can_equip_weapon(3, 5, true))
	print(can_equip_weapon(10, 5, false))
	print(can_equip_weapon(0, 5, true))
	print(can_equip_weapon(5, 5, true))
	print(can_equip_weapon(-5, 1, true))

func can_equip_weapon(level: int, required_level: int, has_weapon: bool) -> bool:
	var player_level: bool = level > 0
	var weapon_requirement: bool = level >= required_level

	return player_level and weapon_requirement and has_weapon

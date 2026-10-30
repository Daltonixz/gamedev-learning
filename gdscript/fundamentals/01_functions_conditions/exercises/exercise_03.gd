# Calculate Enemy damage
# Concepts: Multi parameters, int return type, bool parameter, conditions, Arithmetic, return

# Implement a funtion called calculate_damage().
# It must:
	# Receive "attack_power: int" as an integer.
	# Receive "is_critical: bool" as a Boolean.
	# Return 0 if attack power is lessa than or equal to 0.
	# Return normal attack power if the attack is not critical.
	# Return double attack power if attack is critical.
	# Extra challenge:
		# Deal three times the normal damage instead of double

extends SceneTree

func _init():
	print (calculate_damage(10, false))
	print (calculate_damage(10, true))
	print (calculate_damage(25, false))
	print (calculate_damage(25, true))
	print (calculate_damage(-5, true))

# This is another way of organizing the code in a simpler way
# This type of technic is called an early return pattern.
#func calculate_damage(attack_power: int, is_critical: bool) -> int:
	#if attack_power <= 0:
		#return 0

	#if is_critical:
		#return attack_power * 3

	#return attack_power

func calculate_damage(attack_power: int, is_critical: bool) -> int:
	if attack_power > 0 and is_critical == true:
		#attack_power * 2 and than return attack_power didn't work (?)
		return attack_power * 3
	elif attack_power > 0 and is_critical == false:
		return attack_power
	else:
		# Since return attack_power == 0 is considered a comparison and comparisons return boolean values
		#return attack_power == 0
		return 0

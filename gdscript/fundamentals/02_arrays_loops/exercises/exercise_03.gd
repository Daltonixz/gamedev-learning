# Inventory Item Counter
# Concepts: Arrays, for loops, conditional statements(if), integer variables, incrementing counters (+= 1), functions and parameters, integer return values.

# Requirements:
	# Create a function called count_item().
	# It must:
		# Receive inventory: Array as an array parameter.
		# Receive item_name: String as a string parameter.
		# Create an integer variable called item_count, initially set to 0.
		# Use a for loop to iterate through the inventory.
		# Use an if condition to check whether the current item matches item_name.
		# If a match is found, increase item_count by 1.
		# Return item__count after checking the entire inventory.

extends SceneTree

func _init():
	var inventory = [
		"Health Potion",
		"Mana Potion",
		"Health Potion",
		"Iron Sword",
		"Health Potion",
		"Wooden Shield",
		"Mana Potion"
	]

	print(count_item(inventory, "Health Potion"))
	print(count_item(inventory, "Mana Potion"))
	print(count_item(inventory, "Iron Sword"))
	print(count_item(inventory, "Wooden Shield"))
	print(count_item(inventory, "Golden Sword"))

func count_item(inventory: Array, item_name: String) -> int:
	var item_count: int = 0

	for item in inventory:
		if item == item_name:
			item_count += 1
	return item_count

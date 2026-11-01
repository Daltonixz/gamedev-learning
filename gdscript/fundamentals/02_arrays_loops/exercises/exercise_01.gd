# Inventory Inspector
# Concepts: arrays, array indexes, for loops, conditional statements(if), array methods: size() and append(), iterating through collections

# Requirements:
	# Create an array called "inventory" containing the following items:
		# Health Potion
		# Mana Potion
		# Iron Sword
		# Wooden Shield
		# Health Potion
	# The script must:
		# Use a for loop to print every item in the inventory.
		# Print the total number off items using inventory.size().
		# Use a for loop and an if condition to print only items named "Health Potion".
		# Add "Steel Helmet" to the inventory using inventory.append().
		# Print the updated inventory size.

extends SceneTree

func _init():
	var inventory = [
		"Health Potion",
		"Mana Potion",
		"Iron Sword",
		"Wooden Shield",
		"Health Potion"
	]

	for item in inventory:
		print(item)

	print("Total de items: ", inventory.size())

	for item in inventory:
		if item == "Health Potion":
			print(item)

	inventory.append("Steel Helmet")
	print("Updated inventory size: ", inventory.size())

# Remove an Inventory Item
# Concepts: Arrays, for loops, conditional statements(if)m array methods: erase(), functions and parameters, boolean return values, modifying collections

# Requirements:
	# Create a function called remove_item().
	# It must:
		# Receive inventory: Array as an array parameter.
		# Receive item_name: String as a string parameter.
		# Use a for loop to iterate through the inventory.
		# Use an if condition to check whether the current item matches item_name.
		# If a match is found:
			# Remove that item from the inventory.
			# Return true.
		# If no match is found, return false.

extends SceneTree

func _init():
	var inventory = [
    "Health Potion",
    "Mana Potion",
    "Health Potion",
    "Iron Sword",
    "Wooden Shield"
	]

	print (remove_item(inventory, "Mana Potion"))
	print (remove_item(inventory, "Golden Sword"))
	print (remove_item(inventory, "Health Potion"))

	print("Remaining inventory: ")
	for item in inventory:
		print(item)

func remove_item(inventory: Array, item_name: String) -> bool:

	for item in inventory:
		if item == item_name:
			inventory.erase(item)
			return true
	# For loops need to have a return outside of it because if not the loop doesnt' will stop
	return false

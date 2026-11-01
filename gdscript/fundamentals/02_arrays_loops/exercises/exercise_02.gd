# Inventory Item Search
# Concepts: Arrays, for loops, conditional statements(if), boolean variables, functions and paramenters, boolean return, searching through collections

# Requirements:
	# Create a function called has_item().
	# It must:
		# Receive inventory: Array as an array parameter.
		# Receive item_name: String as a string parameter.
		# Create a Boolean variable called item_found, initially set to false.
		# Use a for loop to iterate through the inventory.
		# Use an if condition to check whether the current item matches item_name.
		# If a match is found, change item_found to true.
		# Return item_found after checking the inventory.

extends SceneTree

func _init():
	var inventory = [
		"Health Potion",
    	"Mana Potion",
     	"Iron Sword",
      	"Wooden Shield",
       	"Health Potion",
        "Steel Helmet"
	]

	print(has_item(inventory, "Iron Sword"))
	print(has_item(inventory, "Health Potion"))
	print(has_item(inventory, "Steel Helmet"))
	print(has_item(inventory, "Golden Sword"))
	print(has_item(inventory, "Mana Crystal"))

func has_item(inventory: Array, item_name: String) -> bool:
	var item_found: bool = false

	for item in inventory:
		if item == item_name:
			item_found = true
			# To stop a for loop you can use break
			break
	return item_found

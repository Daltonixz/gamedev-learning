# Inventory Manager
# Concepts: Arrays, for loops, conditional statements(if), boolean variables, integer counters, functions and parameters, return values(bool, int), array methods (append,erase,size), problem-solving and code organization.

# Requirements:
	# Use the following inventory:
		#var inventory = [
    		#"Health Potion",
      		#"Mana Potion",
        	#"Iron Sword",
         	#"Health Potion",
          	#"Wooden Shield"
		#]
	# Create a function called add_item().
	# It must:
		# Receive an inventory and an item name.
		# Add the item to the inventory using append().

	# Create a function called has_item().
	# It must:
		# Search the inventory.
		# Return true if the item exists.
		# Return false otherwise.

	# Create a function called count_item().
	# It must:
		# Count how many times the requested item appears.
		# Return the total count.

	# Create a function called remove_item().
	# It must:
		# Search for the requested item.
		# Remove only the first occurrence.
		# Return true if removed.
		# Return false if not found.

	# Create a function called display_inventory().
	# It must:
		# Iterate through the inventory.
		# Print every item.
		# Print the total number of items

extends SceneTree

func _init():
	var inventory = [
        "Health Potion",
        "Mana Potion",
        "Iron Sword",
        "Health Potion",
        "Wooden Shield"
    ]

	display_inventory(inventory)
	add_item(inventory, "Steel Helmet")
	print (has_item(inventory, "Iron Sword"))
	print (has_item(inventory, "Golden Sword"))
	print (count_item(inventory, "Health Potion"))
	print (remove_item(inventory, "Health Potion"))
	print (count_item(inventory, "Health Potion"))
	print (remove_item(inventory, "Golden Sword"))
	display_inventory(inventory)

func add_item(inventory: Array, item_name: String) -> void:
	inventory.append(item_name)

func has_item(inventory: Array, item_name: String) -> bool:
	var has_item: bool = false

	for item in inventory:
		if item == item_name:
			has_item = true
			break
	return has_item

func count_item(inventory: Array, item_name: String) -> int:
	var item_count: int = 0

	for item in inventory:
		if item == item_name:
			item_count += 1
	return item_count

func remove_item(inventory: Array, item_name: String) -> bool:
	var item_removed: bool = false

	for item in inventory:
		if item == item_name:
			inventory.erase(item_name)
			item_removed = true
			break
	return item_removed

func display_inventory(inventory: Array) -> void:
	for item in inventory:
		print(item)

	print(inventory.size())

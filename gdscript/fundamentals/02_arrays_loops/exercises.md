# Week 1 — Day 2: Exercises

**Topic:** Arrays and Loops

**Status:** Completed — 5/5 exercises

---

# Exercise 01 — Inventory Inspector

## Objective

Practice creating arrays, iterating through them, checking elements, and adding new items.

## Requirements

1. Create an inventory array containing five items.
2. Print every item using a `for` loop.
3. Print the inventory size.
4. Find and print every Health Potion.
5. Add a Steel Helmet.
6. Print the new inventory size.

## Concepts

- Arrays.
- `for` loops.
- Conditions.
- `append()`.
- `size()`.

## Result

Successfully printed all inventory items, identified Health Potions, added a Steel Helmet, and displayed the updated size.

**Status:** Completed.

---

# Exercise 02 — Inventory Item Search

## Objective

Create a function that checks whether an item exists in an inventory.

## Requirements

Create:

```gdscript
func has_item(inventory: Array, item_name: String) -> bool:
```

The function must:

1. Search through the inventory.
2. Return `true` if the requested item exists.
3. Return `false` if it doesn't exist.

## Concepts

- Functions.
- Parameters.
- Boolean variables.
- Loops.
- Conditions.
- Return values.

## Result

Successfully searched for existing and missing items using a Boolean flag.

**Status:** Completed.

---

# Exercise 03 — Inventory Item Counter

## Objective

Count how many times a specific item appears in an inventory.

## Requirements

Create:

```gdscript
func count_item(inventory: Array, item_name: String) -> int:
```

The function must:

1. Start a counter at zero.
2. Iterate through the inventory.
3. Increase the counter whenever an item matches.
4. Return the final count.

## Concepts

- Integer counters.
- Loops.
- Conditions.
- Functions.
- Return values.

## Result

Successfully counted multiple Health Potions, Mana Potions, and other items, including returning zero when an item was missing.

**Status:** Completed.

---

# Exercise 04 — Remove an Inventory Item

## Objective

Remove the first occurrence of a requested item and report whether removal succeeded.

## Requirements

Create:

```gdscript
func remove_item(inventory: Array, item_name: String) -> bool:
```

The function must:

1. Search through the inventory.
2. Remove the first matching item.
3. Return `true` if removed.
4. Return `false` if the item doesn't exist.

## Concepts

- `erase()`.
- Boolean variables.
- Loops.
- `break`.
- Return values.

## Result

Successfully removed the first matching Health Potion while preserving the second occurrence. Missing items correctly returned `false`.

**Status:** Completed.

---

# Exercise 05 — Inventory Manager

## Objective

Combine the previous exercises into one small Inventory Manager.

This exercise tests whether individual functions can work together to manage a collection of game data.

## Scenario

You are creating a simple inventory system for an RPG.

The player starts with several items. They should be able to add items, search for them, count them, remove them, and display the inventory.

## Initial inventory

```gdscript
var inventory = [
    "Health Potion",
    "Mana Potion",
    "Iron Sword",
    "Health Potion",
    "Wooden Shield"
]
```

## Requirements

### 1. add_item()

```gdscript
func add_item(inventory: Array, item_name: String) -> void:
```

- Receive an inventory and item name.
- Add the item using `append()`.

### 2. has_item()

```gdscript
func has_item(inventory: Array, item_name: String) -> bool:
```

- Search the inventory.
- Return `true` if the item exists.
- Return `false` otherwise.

### 3. count_item()

```gdscript
func count_item(inventory: Array, item_name: String) -> int:
```

- Count how many times the requested item appears.
- Return the total count.

### 4. remove_item()

```gdscript
func remove_item(inventory: Array, item_name: String) -> bool:
```

- Search for the requested item.
- Remove only the first occurrence.
- Return `true` if removed.
- Return `false` if not found.

### 5. display_inventory()

```gdscript
func display_inventory(inventory: Array) -> void:
```

- Iterate through the inventory.
- Print every item.
- Print the total number of items.

## Test cases

| Operation | Expected result |
|---|---|
| Add Steel Helmet | Item added |
| Search Iron Sword | `true` |
| Search Golden Sword | `false` |
| Count Health Potion | `2` |
| Remove Health Potion | `true` |
| Count Health Potion again | `1` |
| Remove Golden Sword | `false` |
| Display final inventory | 5 items |

## Expected final inventory

```text
Mana Potion
Iron Sword
Health Potion
Wooden Shield
Steel Helmet
```

Total items: `5`

## Final implementation

The completed implementation:

```gdscript
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

    print(has_item(inventory, "Iron Sword"))
    print(has_item(inventory, "Golden Sword"))

    print(count_item(inventory, "Health Potion"))

    print(remove_item(inventory, "Health Potion"))
    print(count_item(inventory, "Health Potion"))

    print(remove_item(inventory, "Golden Sword"))

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

    print("Total items: ", inventory.size())
```

## Completion criteria

- [x] All five functions implemented.
- [x] Correct function return types.
- [x] Items can be added.
- [x] Items can be searched.
- [x] Duplicate items can be counted.
- [x] Only the first matching item is removed.
- [x] Missing items are handled correctly.
- [x] Inventory can be displayed.
- [x] Script runs successfully using Godot CLI.

**Status:** Completed.

---

# Day 2 Final Review

## Skills practiced

- [x] Creating arrays.
- [x] Iterating with `for`.
- [x] Using conditions inside loops.
- [x] Searching arrays.
- [x] Counting elements.
- [x] Adding and removing elements.
- [x] Using Boolean flags.
- [x] Using integer counters.
- [x] Returning `bool`, `int`, and `void`.
- [x] Organizing multiple functions into one program.
- [x] Debugging logic and syntax errors.

## Final reflection

The most important lesson from this day was learning how to combine smaller functions into a working system.

Some mistakes encountered included:

- Trying to return the result of `append()`.
- Placing `break` before updating a Boolean variable.
- Returning a constant instead of the calculated result.
- Printing the inventory size inside a loop.

These mistakes helped reinforce how function return types, loop control, and indentation affect program behavior.

## Next step

**Week 1 — Day 3: Build a Health System**

The next exercise will introduce a basic gameplay system involving health, damage, healing, and validation.

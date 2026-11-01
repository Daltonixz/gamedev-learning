# Week 1 — Day 2: Arrays and Loops — Notes

## 1. Arrays

An array stores multiple values inside a single variable.

```gdscript
var inventory = [
    "Health Potion",
    "Mana Potion",
    "Iron Sword"
]
```

Each element has an index, starting at zero.

```gdscript
print(inventory[0]) # Health Potion
print(inventory[1]) # Mana Potion
```

### Useful array methods

| Method | Purpose | Example |
|---|---|---|
| `append()` | Adds an element | `inventory.append("Shield")` |
| `erase()` | Removes the first matching element | `inventory.erase("Health Potion")` |
| `size()` | Returns the number of elements | `inventory.size()` |

## 2. For loops

A `for` loop allows us to iterate through an array.

```gdscript
for item in inventory:
    print(item)
```

The variable `item` represents the current element during each iteration.

### Conditions inside loops

We can combine loops and conditions to find specific elements.

```gdscript
for item in inventory:
    if item == "Health Potion":
        print(item)
```

This checks every item and prints matching elements.

## 3. Boolean flags

A Boolean flag is a variable used to track a condition or result.

Example:

```gdscript
var item_found: bool = false

for item in inventory:
    if item == "Iron Sword":
        item_found = true

print(item_found)
```

We start with `false` because we haven't found the item yet.

When a match is found, we change the value to `true`.

### Searching with early exit

```gdscript
func has_item(inventory: Array, item_name: String) -> bool:
    for item in inventory:
        if item == item_name:
            return true

    return false
```

Another approach is to use a Boolean flag and `break`:

```gdscript
func has_item(inventory: Array, item_name: String) -> bool:
    var item_found: bool = false

    for item in inventory:
        if item == item_name:
            item_found = true
            break

    return item_found
```

`break` stops the loop when a match is found.

## 4. Integer counters

Counters track how many times something happens.

```gdscript
var item_count: int = 0

for item in inventory:
    if item == "Health Potion":
        item_count += 1
```

`item_count += 1` is shorthand for:

```gdscript
item_count = item_count + 1
```

Return the final count after the loop.

```gdscript
return item_count
```

## 5. Removing elements

The `erase()` method removes the first matching element.

```gdscript
inventory.erase("Health Potion")
```

To remove only the first occurrence and report whether removal succeeded:

```gdscript
func remove_item(inventory: Array, item_name: String) -> bool:
    for item in inventory:
        if item == item_name:
            inventory.erase(item_name)
            return true

    return false
```

### Important

`return` exits the entire function.

`break` exits only the loop.

This distinction matters when deciding where to return a result.

## 6. Modifying arrays inside functions

Arrays can be modified by functions that receive them as parameters.

```gdscript
func add_item(inventory: Array, item_name: String) -> void:
    inventory.append(item_name)
```

Calling:

```gdscript
add_item(inventory, "Steel Helmet")
```

modifies the same underlying array, so the caller sees the change.

## 7. Function return types

GDScript functions can have different return types.

### void

Used when a function performs an action but doesn't return a value.

```gdscript
func display_inventory(inventory: Array) -> void:
    for item in inventory:
        print(item)
```

### bool

Used when a function answers a true/false question.

```gdscript
func has_item(inventory: Array, item_name: String) -> bool:
    return inventory.has(item_name)
```

### int

Used when a function returns an integer.

```gdscript
func count_items(inventory: Array) -> int:
    return inventory.size()
```

## 8. Return vs. break

| Keyword | What it does |
|---|---|
| `break` | Stops the current loop |
| `return` | Exits the current function and optionally sends back a value |

Use `break` when you want to stop searching but still execute code after the loop.

Use `return` when the function has already found the answer and can finish immediately.

## 9. Common mistakes encountered

### Returning the result of append()

Incorrect:

```gdscript
func add_item(inventory: Array, item_name: String) -> String:
    return inventory.append(item_name)
```

Correct:

```gdscript
func add_item(inventory: Array, item_name: String) -> void:
    inventory.append(item_name)
```

`append()` modifies the array and returns `void`.

### Placing break before updating a flag

Incorrect:

```gdscript
if item == item_name:
    break
    item_found = true
```

The assignment never executes because `break` exits the loop immediately.

Correct:

```gdscript
if item == item_name:
    item_found = true
    break
```

### Returning a constant instead of the result

Incorrect:

```gdscript
return false
```

when the function is supposed to return the search result.

Correct:

```gdscript
return item_found
```

### Printing the array size inside a loop

Incorrect:

```gdscript
for item in inventory:
    print(item)
    print(inventory.size())
```

Correct:

```gdscript
for item in inventory:
    print(item)

print(inventory.size())
```

The second version prints the total only once.

## 10. Gameplay applications

These concepts are useful for:

- Player inventories.
- Enemy lists.
- Quest objectives.
- Item drops.
- Skill collections.
- Tracking active projectiles.
- Managing groups of enemies.
- Searching for objects or targets.

## Final takeaway

Arrays and loops are fundamental tools for handling collections of game data.

Combining them with functions allows us to create reusable systems instead of repeating the same logic throughout a project.

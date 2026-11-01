# Week 1 — Day 2: Arrays and Loops — Notes

## 1. Arrays

An array is a collection that stores multiple values in a single variable.

Instead of creating a separate variable for every item, we can group related values together.

```gdscript
var inventory = [
    "Health Potion",
    "Mana Potion",
    "Iron Sword",
    "Wooden Shield"
]
```

### Accessing elements

Array elements have indexes, starting at `0`.

```gdscript
print(inventory[0]) # Health Potion
print(inventory[1]) # Mana Potion
```

### Useful array methods

| Method | Purpose |
|---|---|
| `size()` | Returns the number of elements. |
| `append(value)` | Adds an element to the end. |
| `erase(value)` | Removes the first occurrence of a value. |

Example:

```gdscript
inventory.append("Steel Helmet")
print(inventory.size()) # 5

inventory.erase("Mana Potion")
```

## 2. For Loops

A `for` loop allows us to iterate through a collection and process its elements one at a time.

```gdscript
for item in inventory:
    print(item)
```

The loop assigns each element to `item` before executing its body.

This is useful for:
- Displaying inventory contents.
- Checking available items.
- Processing enemies in a group.
- Calculating total resources.

## 3. Conditions Inside Loops

We can combine loops with conditional statements to process only elements that meet specific requirements.

```gdscript
for item in inventory:
    if item == "Health Potion":
        print(item)
```

The loop checks every element, while the condition determines whether the code inside the `if` should execute.

## 4. Boolean Flags

A Boolean flag is a variable used to remember whether something has happened or whether a condition has been met.

Example:

```gdscript
var item_found: bool = false

for item in inventory:
    if item == "Iron Sword":
        item_found = true

return item_found
```

The variable starts as `false`. If a matching item is found, it changes to `true`.

Common game development applications:
- Checking whether the player owns a key.
- Checking whether an enemy has been detected.
- Checking whether a quest is completed.
- Checking whether an objective has been collected.

## 5. Integer Counters

A counter is an integer variable used to keep track of how many times something happens.

```gdscript
var item_count: int = 0

for item in inventory:
    if item == "Health Potion":
        item_count += 1

return item_count
```

The `+=` operator increases the current value.

```gdscript
item_count += 1
```

Is equivalent to:

```gdscript
item_count = item_count + 1
```

Counters are useful for:
- Counting collected coins.
- Tracking remaining enemies.
- Counting inventory items.
- Tracking ammunition.

## 6. Searching Through Arrays

A function can receive an array and an item name, then determine whether the item exists.

```gdscript
func has_item(inventory: Array, item_name: String) -> bool:
    var item_found: bool = false

    for item in inventory:
        if item == item_name:
            item_found = true

    return item_found
```

The function returns:
- `true` if the item exists.
- `false` if the item doesn't exist.

The return statement is outside the loop because the function must finish checking the array before returning the final result.

## 7. Counting Matching Elements

We can adapt the searching logic to count matching elements instead of simply checking whether an item exists.

```gdscript
func count_item(inventory: Array, item_name: String) -> int:
    var item_count: int = 0

    for item in inventory:
        if item == item_name:
            item_count += 1

    return item_count
```

The function returns the total number of matching elements.

For example, if the inventory contains three Health Potions, the function returns `3`.

## 8. Removing Elements From Arrays

Godot provides the `erase()` method to remove an element by value.

```gdscript
inventory.erase("Mana Potion")
```

Important behavior:
- It removes the first matching occurrence.
- It modifies the original array.
- If the value doesn't exist, nothing is removed.

### Modifying an array during iteration

Removing elements while iterating can cause problems because array elements shift positions

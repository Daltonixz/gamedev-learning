# Week 1 — Day 2: Exercises

## Overview

**Topic:** Arrays and Loops

**Status:** Completed

This document records the four exercises implemented during Day 2.

---

## Exercise 01 — Inventory Inspector

**File:** `exercise_01.gd`

### Objective

Inspect an RPG inventory, display its contents, identify specific items, add a new item, and display the updated inventory size.

### Requirements

- Create an inventory array.
- Use a `for` loop to print every item.
- Display the inventory size using `size()`.
- Use a loop and condition to print only Health Potions.
- Add `"Steel Helmet"` using `append()`.
- Display the updated inventory size.

### Main concepts

- Arrays.
- `for` loops.
- Conditional statements.
- `size()`.
- `append()`.

### Key implementation

```gdscript
for item in inventory:
    print(item)

print(inventory.size())

for item in inventory:
    if item == "Health Potion":
        print(item)

inventory.append("Steel Helmet")
print(inventory.size())
```

### Result

Successfully implemented and executed.

---

## Exercise 02 — Inventory Item Search

**File:** `exercise_02.gd`

### Objective

Create a function that checks whether a requested item exists in an inventory.

### Requirements

- Create `has_item()`.
- Receive an inventory array.
- Receive an item name.
- Initialize a Boolean flag to `false`.
- Iterate through the inventory.
- Set the flag to `true` when a matching item is found.
- Return the flag after checking the inventory.

### Main concepts

- Arrays.
- `for` loops.
- Conditional statements.
- Boolean variables.
- Functions and parameters.
- Boolean return values.

### Key implementation

```gdscript
func has_item(inventory: Array, item_name: String) -> bool:
    var item_found: bool = false

    for item in inventory:
        if item == item_name:
            item_found = true

    return item_found
```

### Test cases

| Item searched | Expected result |
|---|---|
| Iron Sword | `true` |
| Health Potion | `true` |
| Steel Helmet | `true` |
| Golden Sword | `false` |
| Mana Crystal | `false` |

### Result

Successfully implemented and tested.

---

## Exercise 03 — Inventory Item Counter

**File:** `exercise_03.gd`

### Objective

Create a function that counts how many times a requested item appears in an inventory.

### Requirements

- Create `count_item()`.
- Receive an inventory array.
- Receive an item name.
- Initialize an integer counter to `0`.
- Iterate through the inventory.
- Increase the counter when an item matches.
- Return the final counter.

### Main concepts

- Arrays.
- `for` loops.
- Conditional statements.
- Integer variables.
- Incrementing counters (`+= 1`).
- Functions and parameters.
- Integer return values.

### Key implementation

```gdscript
func count_item(inventory: Array, item_name: String) -> int:
    var item_count: int = 0

    for item in inventory:
        if item == item_name:
            item_count += 1

    return item_count
```

### Test cases

| Item searched | Expected result |
|---|---:|
| Health Potion | `3` |
| Mana Potion | `2` |
| Iron Sword | `1` |
| Wooden Shield | `1` |
| Golden Sword | `0` |

### Result

Successfully implemented and tested.

---

## Exercise 04 — Remove an Inventory Item

**File:** `exercise_04.gd`

### Objective

Create a function that removes the first occurrence of a requested item from an inventory.

### Requirements

- Create `remove_item()`.
- Receive an inventory array.
- Receive an item name.
- Iterate through the inventory.
- Check whether an item matches the requested name.
- Remove the first matching item using `erase()`.
- Return `true` if an item is removed.
- Return `false` if no matching item exists.

### Main concepts

- Arrays.
- `for` loops.
- Conditional statements.
- `erase()`.
- Functions and parameters.
- Boolean return values.
- Modifying collections.
- Early returns.

### Key implementation

```gdscript
func remove_item(inventory: Array, item_name: String) -> bool:
    for item in inventory:
        if item == item_name:
            inventory.erase(item)
            return true

    return false
```

### Test cases

| Operation | Expected result |
|---|---|
| Remove Mana Potion | `true` |
| Remove Golden Sword | `false` |
| Remove Health Potion | `true` |

### Expected remaining inventory

```text
Health Potion
Iron Sword
Wooden Shield
```

### Result

Successfully implemented and tested. Only the first matching occurrence is removed.

---

## Day 2 Final Summary

**Completed exercises:** 4

### Skills demonstrated

- Creating and initializing arrays.
- Iterating through arrays.
- Combining loops with conditions.
- Searching for elements.
- Using Boolean flags.
- Counting matching elements.
- Incrementing integer counters.
- Adding elements to arrays.
- Removing elements from arrays.
- Returning values from functions.
- Using early returns.
- Modifying arrays through function parameters.

### Development

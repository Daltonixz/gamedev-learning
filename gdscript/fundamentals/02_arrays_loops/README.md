# Week 1 — Day 2: Arrays and Loops

## Overview

**Focus:** Working with arrays, iterating through collections, searching for elements, counting occurrences, and modifying array contents.

**Engine:** Godot 4.7.2  
**Language:** GDScript  
**Execution:** Headless mode using the Godot command line.

## Learning Objectives

By completing this day, I practiced how to:

- Create and initialize arrays.
- Iterate through arrays using `for` loops.
- Access and compare array elements.
- Use conditional statements inside loops.
- Check whether an element exists in an array.
- Count how many times an element appears.
- Add and remove elements from arrays.
- Use Boolean variables as flags.
- Use integer variables as counters.
- Return values from functions.
- Modify collections through function parameters.

## Exercises Completed

### Exercise 01 — Inventory Inspector

**File:** `exercise_01.gd`

**Concepts:**
- Array creation and initialization.
- `for` loops.
- Conditional statements.
- `Array.size()`.
- `Array.append()`.

**Objective:**

Inspect an RPG inventory, display its contents, identify specific items, add a new item, and display the updated inventory size.

**Result:** Successfully implemented and executed.

### Exercise 02 — Inventory Item Search

**File:** `exercise_02.gd`

**Concepts:**
- Arrays.
- `for` loops.
- Conditional statements.
- Boolean variables.
- Functions and parameters.
- Boolean return values.

**Objective:**

Create a `has_item()` function that searches an inventory and determines whether a requested item exists.

**Result:** Successfully implemented and tested with existing and missing items.

### Exercise 03 — Inventory Item Counter

**File:** `exercise_03.gd`

**Concepts:**
- Arrays.
- `for` loops.
- Conditional statements.
- Integer variables.
- Incrementing counters (`+= 1`).
- Functions and parameters.
- Integer return values.

**Objective:**

Create a `count_item()` function that counts how many times a requested item appears in an inventory.

**Result:** Successfully implemented and tested with different items and quantities.

### Exercise 04 — Remove an Inventory Item

**File:** `exercise_04.gd`

**Concepts:**
- Arrays.
- `for` loops.
- Conditional statements.
- `Array.erase()`.
- Functions and parameters.
- Boolean return values.
- Modifying collections.
- Early returns.

**Objective:**

Create a `remove_item()` function that searches for an item, removes its first occurrence, and reports whether the removal was successful.

**Result:** Successfully implemented and tested. The function removes only the first matching occurrence.

## Key Concepts Learned

### 1. Iterating Through Arrays

A `for` loop allows us to inspect every element in an array.

```gdscript
for item in inventory:
    print(item)
```

### 2. Searching for Elements

A Boolean flag can remember whether an element was found.

```gdscript
var item_found: bool = false

for item in inventory:
    if item == item_name:
        item_found = true

return item_found
```

### 3. Counting Elements

An integer counter can track how many matching elements exist.

```gdscript
var item_count: int = 0

for item in inventory:
    if item == item_name:
        item_count += 1

return item_count
```

### 4. Modifying Arrays

Godot provides methods for modifying arrays.

- `append()` adds an element to the end.
- `erase()` removes the first occurrence of a specified value.
- `size()` returns the number of elements.

### 5. Early Returns

`return` immediately exits a function and sends a value back to its caller.

This is useful when a function finds the result it needs before finishing its loop.

## Running the Exercises

All exercises can be executed from the Day 2 directory using Godot's headless mode:

```bash
godot --headless --script exercise_01.gd
godot --headless --script exercise_02.gd
godot --headless --script exercise_03.gd
godot --headless --script exercise_04.gd
```

## Day 2 Summary

**Status:** Completed

Four exercises were successfully implemented and executed.

By the end of this day, I practiced combining arrays, loops, conditions, and functions to implement basic inventory operations.

These concepts are useful foundations for more advanced gameplay systems, particularly inventory management, item collection, equipment systems, and resource tracking.

## Next Learning Step

Continue with Week 1 — Day 3: Building a Health System.

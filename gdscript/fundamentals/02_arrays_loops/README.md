# Week 1 — Day 2: Arrays and Loops

## Overview

**Main focus:** Understanding arrays, loops, and how to manipulate collections of data.

**Status:** Completed

**Exercises completed:** 5/5

## Learning objectives

By the end of this day, I practiced how to:

- Create and work with arrays.
- Iterate through arrays using `for` loops.
- Search for specific elements.
- Count matching elements.
- Add and remove elements.
- Use Boolean variables to track search results.
- Use integer counters.
- Create functions that return `bool`, `int`, or `void`.
- Combine multiple functions into a small system.

## Exercises

| Exercise | Name | Main concepts |
|---|---|---|
| 01 | Inventory Inspector | Arrays, loops, conditions, append, size |
| 02 | Inventory Item Search | Boolean flags, searching, return values |
| 03 | Inventory Item Counter | Integer counters, loops |
| 04 | Remove an Inventory Item | erase, break, Boolean results |
| 05 | Inventory Manager | Functions, arrays, loops, system organization |

## Project structure

```text
day-02/
├── README.md
├── NOTES.md
├── EXERCISES.md
├── exercise_01.gd
├── exercise_02.gd
├── exercise_03.gd
├── exercise_04.gd
└── exercise_05.gd
```

## Important concepts learned

### Arrays

Arrays store multiple values in a single variable.

```gdscript
var inventory = ["Health Potion", "Iron Sword"]
```

### Loops

A `for` loop allows us to process every element in an array.

```gdscript
for item in inventory:
    print(item)
```

### Searching

Boolean variables can track whether an element was found.

### Counting

Integer counters can track how many times a specific element appears.

### Modifying arrays

- `append()` adds an element.
- `erase()` removes the first matching element.
- `size()` returns the number of elements.

### Return values

- `bool`: Returns `true` or `false`.
- `int`: Returns an integer.
- `void`: Does not return a value.

## Final result

Exercise 05 combined the previous exercises into a small Inventory Manager with five functions:

- `add_item()`
- `has_item()`
- `count_item()`
- `remove_item()`
- `display_inventory()`

The program successfully added, searched, counted, removed, and displayed inventory items.

## Day 2 conclusion

I completed all five exercises and practiced combining smaller functions into a single program.

**Next step:** Week 1 — Day 3: Build a Health System.

Topics:
- Current health and maximum health.
- Taking damage.
- Healing.
- Health validation.
- Checking whether a character is alive.

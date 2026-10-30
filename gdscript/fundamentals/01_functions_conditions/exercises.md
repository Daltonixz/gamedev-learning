
# Day 1 - Functions, Conditions and Problem-Solving

This document records the programming exercises completed during Day 1.

Each exercise focuses on applying functions, parameters, return values, conditions, and logical operators to gameplay-related problems.

---

## Exercise 01 - Is the Enemy Defeated?

**File:** `exercises/exercise_01.gd`

### Objective

Determine whether an enemy is defeated based on its current health.

### Requirements

Create a function called `is_enemy_defeated()`.

The function must:

- Receive the enemy's health as an integer.
- Return `true` if the enemy's health is less than or equal to zero.
- Return `false` if the enemy's health is greater than zero.

### Concepts Practiced

- Function declarations.
- Integer parameters.
- Boolean return types.
- Comparison operators.
- Return keyword.

### Implementation

Used a direct comparison to determine whether enemy health is zero or below.

### Status

Completed.

---

## Exercise 02 - Can the Hero Attack?

**File:** `exercises/exercise_02.gd`

### Objective

Determine whether a hero is allowed to attack based on their current condition.

### Requirements

Create a function called `can_hero_attack()`.

The function must receive:

- `health: int`
- `stamina: int`
- `is_stunned: bool`

The hero can attack only when:

- Health is greater than zero.
- Stamina is at least 10.
- The hero is not stunned.

### Concepts Practiced

- Multiple function parameters.
- Integer and boolean data types.
- Boolean return values.
- Comparison operators.
- Logical `and` operator.
- Negating boolean conditions.

### Implementation

Combined three conditions using the logical `and` operator.

Also experimented with checking a boolean using `== false` and the `not` keyword.

### Status

Completed.

---

## Exercise 03 - Calculate Enemy Damage

**File:** `exercises/exercise_03.gd`

### Objective

Calculate the amount of damage an enemy attack should deal.

### Requirements

Create a function called `calculate_damage()`.

The function must receive:

- `attack_power: int`
- `is_critical: bool`

The function must:

- Return zero if attack power is less than or equal to zero.
- Return normal attack power if the attack is not critical.
- Return double attack power if the attack is critical.

### Extra Challenge

Increase critical damage to three times the normal attack power.

### Concepts Practiced

- Multiple function parameters.
- Integer return types.
- Boolean parameters.
- Conditional statements.
- Arithmetic operations.
- Early return pattern.
- Returning different values based on conditions.

### Implementation

Implemented the extra challenge by multiplying attack power by three when the attack is critical.

Also experimented with two approaches:

1. Using `if`, `elif`, and `else`.
2. Using early returns to simplify the function.

### Status

Completed, including the extra challenge.

---

## Exercise 04 - Potion Usage Validator

**File:** `exercises/exercise_04.gd`

### Objective

Determine whether a hero is allowed to use a health potion.

### Initial Requirements

Create a function called `can_use_potion()`.

The function must receive:

- `health: int`
- `max_health: int`
- `potions: int`

The function must return `true` only when:

- The hero is alive (`health > 0`).
- The hero is not at maximum health (`health < max_health`).
- The hero has at least one potion (`potions >= 1`).

Otherwise, return `false`.

### Extra Challenge - Input Validation

Extend the function to reject invalid values:

- Maximum health must be greater than zero.
- Current health must be greater than zero.
- Current health cannot exceed maximum health.
- Potion count must be at least one.

### Concepts Practiced

- Multiple function parameters.
- Integer and boolean data types.
- Boolean return values.
- Logical `and` operator.
- Input validation.
- Intermediate boolean variables.
- Combining multiple conditions.
- Handling invalid input values.

### Implementation

Created an advanced version called `can_use_potion_advanced()`.

Used intermediate boolean variables to represent individual requirements before combining them into a final return expression.

### Status

Completed, including the extra challenge.

---

## Exercise 05 - Can the Hero Equip a Weapon?

**File:** `exercises/exercise_05.gd`

### Objective

Determine whether a hero meets the requirements to equip a weapon.

### Requirements

Create a function called `can_equip_weapon()`.

The function must receive:

- `level: int`
- `required_level: int`
- `has_weapon: bool`

The function must return `false` when:

- The hero's level is zero or negative.
- The hero's level is lower than the weapon's required level.
- The hero does not own the weapon.

Return `true` only when all requirements are satisfied.

### Concepts Practiced

- Multiple function parameters.
- Integer and boolean data types.
- Boolean return values.
- Comparison operators.
- Logical `and` operator.
- Intermediate boolean variables.
- Combining multiple conditions.

### Implementation

Created separate boolean variables for the hero's level and weapon level requirement.

Combined those conditions with the weapon ownership condition in the final return statement.

### Status

Completed.

---

## Day 1 Summary

Completed five exercises involving gameplay-related programming problems.

The exercises progressively introduced more complex conditions and validation requirements.

The most important practice was learning how to translate written requirements into boolean expressions and function logic.


# Day 1 - Personal Notes

## 1. Functions

A function is a reusable block of code designed to perform a specific task.

Functions help organize code, avoid unnecessary repetition, and make programs easier to maintain.

Example:

```gdscript
func is_enemy_defeated(health: int) -> bool:
    return health <= 0
```

### Important Elements

- `func`: Declares a function.
- `is_enemy_defeated`: Function name.
- `health: int`: Parameter with an integer type.
- `-> bool`: Declares the return type.
- `return`: Sends a result back to the caller.

---

## 2. Parameters and Arguments

Parameters are variables declared inside a function definition.

Arguments are the actual values passed when calling a function.

Example:

```gdscript
func calculate_damage(attack_power: int) -> int:
    return attack_power * 2

calculate_damage(10)
```

- `attack_power` is a parameter.
- `10` is an argument.

A function can receive multiple parameters to work with different pieces of information.

Example:

```gdscript
func can_hero_attack(
    health: int,
    stamina: int,
    is_stunned: bool
) -> bool:
    return health > 0 and stamina >= 10 and not is_stunned
```

---

## 3. Return Values

A return value is the result a function sends back to the code that called it.

The return type specifies what kind of value the function is expected to return.

Examples:

```gdscript
func calculate_damage() -> int:
    return 25
```

```gdscript
func is_enemy_defeated(health: int) -> bool:
    return health <= 0
```

### Return vs Print

`return` sends a value back to the caller.

`print()` displays information in the output console.

Example:

```gdscript
func calculate_damage() -> int:
    return 25

func _init() -> void:
    print(calculate_damage())
```

The function calculates and returns the value. The caller decides what to do with it.

---

## 4. Conditional Statements

Conditional statements allow a program to make decisions based on whether a condition is true or false.

### If

Executes a block of code when a condition is true.

```gdscript
if health <= 0:
    print("Enemy defeated")
```

### Elif

Checks another condition when the previous condition was false.

```gdscript
if health <= 0:
    print("Enemy defeated")
elif health < 50:
    print("Enemy injured")
```

### Else

Executes when none of the previous conditions were true.

```gdscript
if health <= 0:
    print("Enemy defeated")
else:
    print("Enemy alive")
```

---

## 5. Comparison Operators

Comparison operators compare two values and produce a boolean result.

| Operator | Meaning |
|---|---|
| `==` | Equal to |
| `!=` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal to |
| `<=` | Less than or equal to |

Example:

```gdscript
var is_alive: bool = health > 0
```

The comparison produces either `true` or `false`.

---

## 6. Logical Operators

Logical operators allow multiple boolean conditions to be combined.

### AND

Both conditions must be true.

```gdscript
var can_attack: bool = health > 0 and stamina >= 10
```

### OR

At least one condition must be true.

```gdscript
var can_use_skill: bool = has_mana or has_free_cast
```

### NOT

Reverses a boolean value.

```gdscript
var is_not_stunned: bool = not is_stunned
```

An alternative is:

```gdscript
var is_not_stunned: bool = is_stunned == false
```

Both expressions produce the same result when `is_stunned` is a boolean.

---

## 7. Boolean Expressions and Intermediate Variables

A comparison or logical expression can be stored inside a boolean variable.

Example:

```gdscript
var is_alive: bool = health > 0
var needs_healing: bool = health < max_health
var has_potions: bool = potions >= 1

return is_alive and needs_healing and has_potions
```

This approach can make complex conditions easier to read and understand.

It also helps break a programming problem into smaller pieces.

---

## 8. Input Validation

Input validation means checking whether received values satisfy the requirements before using them.

Example:

```gdscript
func can_use_potion(
    health: int,
    max_health: int,
    potions: int
) -> bool:

    if max_health <= 0:
        return false

    if health <= 0 or health > max_health:
        return false

    if potions <= 0:
        return false

    return health < max_health
```

The function rejects invalid values before checking whether the hero can use a potion.

This helps prevent unexpected behavior.

---

## 9. Early Return Pattern

An early return is a programming technique where a function exits as soon as a condition makes further execution unnecessary.

Example:

```gdscript
func calculate_damage(
    attack_power: int,
    is_critical: bool
) -> int:

    if attack_power <= 0:
        return 0

    if is_critical:
        return attack_power * 3

    return attack_power
```

This approach avoids unnecessary nested conditions and can make functions easier to read.

---

## 10. Arithmetic Operations

Arithmetic operations allow functions to perform mathematical calculations.

Common operators:

| Operator | Meaning |
|---|---|
| `+` | Addition |
| `-` | Subtraction |
| `*` | Multiplication |
| `/` | Division |
| `%` | Modulo (remainder) |

Example:

```gdscript
func calculate_damage(attack_power: int, is_critical: bool) -> int:
    if is_critical:
        return attack_power * 3

    return attack_power
```

---

## 11. Problem-Solving Approach

A useful approach when solving programming exercises:

1. Understand the requirements.
2. Identify the required inputs.
3. Identify the expected output.
4. Break the requirements into smaller conditions.
5. Decide how those conditions should be combined.
6. Implement the function.
7. Test different scenarios, including invalid inputs.
8. Review the result and improve readability.

---

## 12. Personal Reflection

Complete these sections using your own words.

### What I understood

- Explain what a function does.
- Explain the difference between parameters and arguments.
- Explain why functions have return types.
- Explain how logical AND works.

### What I found difficult

Document any concepts or problems that required additional thinking.

### What I improved

Describe something you initially struggled with but understood better after practicing.

### What I still need to practice

Identify concepts you cannot yet implement confidently without assistance.

### Most important lesson

What was the most important thing you learned during Day 1?

---

## 13. Next Learning Session

Day 2 - Arrays and Loops.

Topics to practice:

- Creating arrays.
- Storing multiple values.
- Accessing array elements.
- Array indexes.
- Iterating through arrays.
- Using for loops.
- Combining arrays and conditions.

# Code Style

## Purpose

This document defines style rules for scripts, files, and technical organization in Ines Game.

Consistency is more important than personal preference.

## Language

- Scripts, variables, functions, classes, comments, and technical file names must be in English.
- Communication with Marcos must be in Spanish.
- Technical documentation may remain in English for project consistency.

## Naming Conventions

- Files: `snake_case.gd`
- Folders: `snake_case`
- Variables: `snake_case`
- Functions: `snake_case`
- Signals: `snake_case`
- Constants: `UPPER_SNAKE_CASE`
- Classes registered with `class_name`: `PascalCase`
- Scene files: `PascalCase.tscn` for primary scene assets such as `Player.tscn`

Examples:

```text
scripts/player/player_movement.gd
class_name PlayerMovement
var max_speed: float
func apply_horizontal_velocity() -> Vector2
const DEFAULT_GRAVITY := 1600.0
```

## File Structure

Gameplay scripts should live near their domain:

```text
scripts/
├── player/
├── enemies/
└── shared/
```

Scenes should be grouped by gameplay role:

```text
scenes/
├── player/
├── enemies/
└── test/
```

Assets should be grouped by content type:

```text
assets/
├── player/
├── enemies/
├── environment/
└── ui/
```

## Script Organization

Use this order when practical:

1. `class_name`
2. `extends`
3. constants
4. exported variables
5. regular variables
6. `@onready` references
7. Godot lifecycle methods
8. public methods
9. private helper methods

Keep methods short enough to scan.

## Comments

- Use comments only when they explain intent, tradeoffs, or non-obvious behavior.
- Do not comment obvious assignments or simple control flow.
- Prefer clear names over explanatory comments.
- Comments must be in English.

Good comment:

```gdscript
# Keep a small forward drift so Ines feels restless even without input.
```

Avoid:

```gdscript
# Set velocity x to speed.
```

## GDScript Practices

- Prefer typed variables and return types where they improve clarity.
- Prefer exported tuning values for gameplay feel.
- Avoid large inheritance chains.
- Avoid hidden dependencies on scene paths outside the current scene.
- Use `preload` for required local scripts and scenes.
- Avoid magic numbers inside complex logic; name important tuning values.
- Keep physics behavior inside `_physics_process()` or focused physics helpers.

## Consistency Checks

Player:

- The main player script should coordinate, not contain every movement detail.
- Movement and jump helpers should remain readable and focused.

Movement:

- Tuning variables should use clear names such as `max_speed`, `acceleration`, and `minimum_flow_speed`.
- Movement functions should return updated velocity rather than mutating unrelated state.

Jump:

- Jump timing variables should be named clearly, such as `coyote_time`, `jump_buffer_time`, and `chain_window`.
- Jump logic should not include enemy behavior.

Enemies:

- Enemy methods should use transformation language.
- Avoid names like `kill`, `damage`, `destroy`, or `attack` unless explicitly approved for a non-violent meaning.

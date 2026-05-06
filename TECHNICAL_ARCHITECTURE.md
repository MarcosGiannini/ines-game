# Technical Architecture

## Purpose

This document explains how the current systems connect and how they should evolve.

The architecture must protect the core loop:

```text
MOVE -> JUMP -> CHAIN -> FLOW
```

## Current System Overview

The current playable base is intentionally small:

- `Player` coordinates input, physics helpers, facing, and interactions.
- `PlayerMovement` calculates horizontal velocity and continuous flow.
- `PlayerJumpSystem` manages jump buffering, coyote timing, and early chain-jump rhythm.
- `EnemyBase` reacts to player flow and transforms safely.
- `MovementTestRoom` provides a minimal scene for manual testing.

## Godot Node Usage

Player:

- Root node: `CharacterBody2D`
- Collision: `CollisionShape2D`
- Placeholder visuals: child `Node2D` with simple `Polygon2D` shapes
- Script: `scripts/player/player.gd`

Enemy:

- Root node: `Area2D`
- Collision: `CollisionShape2D`
- Placeholder visual: `Polygon2D`
- Script: `scripts/enemies/enemy_base.gd`

Test room:

- Root node: `Node2D`
- Static geometry: `StaticBody2D`
- Instances: `Player.tscn` and `EnemyBase.tscn`

## Responsibility Boundaries

Player:

- reads input
- owns `CharacterBody2D.velocity`
- delegates horizontal movement
- delegates jump decisions
- moves with `move_and_slide()`
- forwards valid interactions to enemies

PlayerMovement:

- calculates horizontal target speed
- applies acceleration
- preserves the restless movement identity
- does not know about enemies or scene layout

PlayerJumpSystem:

- tracks jump buffer
- tracks coyote timing
- tracks chain timing
- returns updated vertical velocity
- does not read input directly

EnemyBase:

- owns enemy transformation state
- decides whether player flow is enough to transform it
- changes its own visual feedback
- does not control player movement

## Data Flow

Input to movement:

```text
Input actions -> Player -> PlayerMovement -> Player.velocity
```

Input to jump:

```text
Input jump action -> Player -> PlayerJumpSystem -> Player.velocity.y
```

Player physics:

```text
Player.velocity -> move_and_slide() -> collision information
```

Enemy interaction:

```text
Player collision or Area2D body_entered -> EnemyBase.transform_from_player(player)
EnemyBase reads player.get_flow_strength()
EnemyBase transforms if flow is high enough
```

## Coupling Rules

- `Player` may know that enemies can expose `transform_from_player()`.
- `EnemyBase` may ask the player for `get_flow_strength()`.
- `PlayerMovement` must not know about enemies.
- `PlayerJumpSystem` must not know about enemies or visuals.
- Visual feedback should not rewrite movement rules.
- Future systems should communicate through focused methods or signals, not shared global state.

## How to Verify Each System

Player:

- Run the movement test room.
- Confirm input changes facing direction.
- Confirm movement and jump still work after any player coordinator change.
- Confirm the player script remains a coordinator rather than a large all-purpose script.

Movement:

- Run the movement test room.
- Hold left and right.
- Confirm Ines accelerates quickly and continues to feel restless.
- Confirm no enemy interaction is required for movement to work.

Jump:

- Run the movement test room.
- Press jump while grounded.
- Confirm Ines jumps reliably.
- Press jump shortly before landing.
- Confirm buffered jump behavior remains fair when implemented or tuned.

Enemies:

- Run the movement test room.
- Move into the enemy with enough flow.
- Confirm the enemy transforms visually.
- Confirm the enemy is not destroyed, damaged, or removed violently.

Architecture:

- Review modified files after each phase.
- Confirm each system changed only for its own responsibility.
- Confirm no new feature creates unnecessary cross-system dependency.

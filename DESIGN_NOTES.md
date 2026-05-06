# Ines Game Design Notes

## Core Identity

Ines Game is a fast 2D platformer about movement, imagination, and transforming fear into something gentle.

The core loop is:

```text
MOVE -> JUMP -> CHAIN -> FLOW
```

## Phase 1 Boundaries

- Use placeholder geometry only.
- Keep Ines fast, expressive, and always moving.
- Keep systems separated so movement, jump logic, and player coordination can evolve independently.
- Avoid weapons, explicit damage, or heavy combat systems.
- Use a minimal test room, not a full level.

## System Responsibilities

- Player coordinates input, physics helpers, facing, and interactions.
- Movement owns horizontal speed, acceleration, and constant-flow behavior.
- Jump system owns buffered jumps, coyote timing, and early chain-jump rhythm.
- Enemy base owns gentle transformation when touched with enough flow.

# Ines Game

Ines Game is a fast, fluid 2D platformer built with Godot.

The game is about movement, imagination, courage, and transforming fear into something gentle. It is inspired by a very active child whose personality is expressed through constant motion, playful jumps, and unstoppable rhythm.

Core loop:

```text
MOVE -> JUMP -> CHAIN -> FLOW
```

## Vision

This project is intended to grow as a high-quality commercial game, potentially publishable on Steam or similar platforms.

It is not being treated as a disposable prototype. Development should prioritize:

- strong movement feel
- clean architecture
- modular gameplay systems
- safe and magical tone
- non-violent enemy transformation
- long-term maintainability

## Current State

The project currently contains:

- a Godot 4 project file
- a minimal player scene
- separated movement and jump scripts
- a base enemy transformation placeholder
- a minimal movement test room
- project governance documentation

## How to Run

1. Install Godot 4.
2. Open this folder as a Godot project.
3. Run the main scene.

The main scene is:

```text
res://scenes/test/MovementTestRoom.tscn
```

Controls:

- Move left: `A` or left arrow
- Move right: `D` or right arrow
- Jump: `Space`, `W`, or up arrow

## Working With AI

AI work on this project must follow the project governance files:

- [AI_MASTER_CONTEXT.md](AI_MASTER_CONTEXT.md)
- [AI_WORKFLOW.md](AI_WORKFLOW.md)
- [REHYDRATION_PROTOCOL.md](REHYDRATION_PROTOCOL.md)
- [ROADMAP.md](ROADMAP.md)

Important rules:

- Work one phase at a time.
- Do not jump ahead.
- Do not add gameplay outside the approved phase.
- Keep scripts in English.
- Keep systems modular.
- Explain changes clearly for Marcos.
- Every future change must include manual verification steps.

Before any new AI session acts, it must follow the rehydration protocol and wait for confirmation.

## Roadmap

See [ROADMAP.md](ROADMAP.md) for the controlled development phases.

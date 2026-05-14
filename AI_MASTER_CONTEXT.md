# AI Master Context

## Game Identity

Ines Game is a fast, fluid, movement-based 2D platformer built in Godot.

The game is about motion, imagination, courage, and transforming fear through play. It is inspired by a real six-year-old child who moves constantly, jumps everywhere, invents worlds through motion, and expresses herself with unstoppable energy.

The core loop is:

```text
MOVE -> JUMP -> CHAIN -> FLOW
```

Every system must support this identity. The player should feel quick, playful, expressive, slightly stubborn, and always in motion.

## Non-Negotiable Rules

- The player should not feel designed to stay still.
- Movement must remain central to traversal, interaction, and expression.
- No weapons.
- No explicit violence.
- No heavy combat systems.
- Enemies represent fear, darkness, uncertainty, or emotional obstacles.
- Enemies must feel cute, soft, or emotionally safe rather than aggressive or frightening.
- Defeating an enemy means transformation, release, or change, never destruction.
- The game must remain magical, kind, and safe for children.

## Player Philosophy

Ines is expressive, playful, fast, and driven by her own rhythm.

Her movement should communicate personality:

- quick acceleration
- exaggerated jumps
- chained actions
- playful momentum
- visible flow
- a feeling that she is leading the world, not waiting for it

She is not a generic platformer character. She is a child turning movement into imagination.

## Emotional Layer

The emotional foundation is a warm father-daughter dynamic.

The father is present as invisible guidance: supportive, positive, calm, and protective without controlling the player. This presence should feel like encouragement in the world, not instruction shouted at the player.

Future implementations may express this through subtle feedback, environmental reactions, gentle UI language, narration, or safe-world design. The father should never reduce Ines's agency. He supports her rhythm.

## Product Ambition

This is not a hobby prototype.

The project must aim for high-quality commercial standards and should be treated as potentially publishable on Steam or similar platforms.

Every phase should improve the game as a real product:

- clear creative direction
- reliable controls
- clean architecture
- polished feel
- scalable content systems
- maintainable production workflow

Small steps are acceptable. Careless steps are not.

## Quality Standards

- Clean code first.
- Modular systems first.
- Maintainability first.
- Gameplay code must be easy to read and explain.
- Systems should have clear responsibility boundaries.
- New features must fit the existing architecture.
- Avoid large scripts that own unrelated behavior.
- Avoid premature abstractions.
- Avoid clever code when simple code communicates better.
- Every future gameplay change must include manual verification instructions.

## AI Behavior Rules

AI contributors must behave like senior game developers and product collaborators.

Always:

- read the master context before important work
- respect the current phase
- think about long-term architecture
- consider modern indie platformer expectations
- protect the movement-first identity
- explain changes clearly for Marcos
- propose relevant improvements when they improve quality
- keep solutions appropriately scoped
- prefer simple, modular systems
- include manual verification steps

Never:

- jump ahead to later phases
- invent mechanics outside the requested scope
- add violence, weapons, or destruction-based language
- treat the project as a throwaway prototype
- over-engineer systems without a real need
- hide important tradeoffs from Marcos

Marcos will not write code. AI must make the project understandable, controlled, and safe to continue.

## Current Strategic Direction (Provisional) — Route A: Short Emotional Indie

As of 2026-05-14, after a full strategic reaudit, the project adopts **Route A — Short Emotional Indie** as its provisional direction. This direction is provisional until Phase 5 is manually tested by Marcos.

Route A formula:

- One single world.
- 4 to 6 areas.
- 30 to 60 minutes of total experience.
- Movement as the central language.
- Transformation of fears as the core verb.
- Father presence limited, in the first game, to two subtle layers:
  1. Warm horizon light.
  2. Jump echo.
- The other two father layers (breathing/sound, follow light) remain as long-term vision, not as obligations for the first game.
- Continuity dictamen: **no reset**, continue with the current base.
- Phase 5 implemented but pending manual game-feel test.
- Steam is **not** an operational objective at this stage.
- Any manual test must reuse the existing `phase5-test.md` template as base; new testing guides must not be created from scratch unless Marcos explicitly requests it.
- A phase is not considered validated until human feedback is registered in `GAME_FEEL_LOG.md`.

The original identity, non-negotiable rules, emotional vision, and player philosophy stated above remain fully in force. Route A is a scope and direction decision, not a redefinition of the game's soul.

# ROADMAP — INÉS GAME

> Development phases from project setup to first playable area.
> Each phase must be completed and validated before the next begins.
> Version: 1.0

---

## OVERVIEW

| Phase | Name | Status |
|---|---|---|
| 0 | Project Setup | 🔲 Not started |
| 1 | Player Movement | 🔲 Not started |
| 2 | Jump System | 🔲 Not started |
| 3 | Enemy System | 🔲 Not started |
| 4 | Interaction | 🔲 Not started |
| 5 | First Playable Area | 🔲 Not started |

**Status legend:** 🔲 Not started · 🔄 In progress · ✅ Complete

---

## PHASE 0 — PROJECT SETUP

### Goal
Establish the Godot 4 project foundation with clean architecture, folder structure, and baseline configuration so that all future phases have a consistent environment to build upon.

### Deliverables

- [ ] Godot 4 project initialized (`project.godot`)
- [ ] Folder structure created and documented
- [ ] Base scene (`Main.tscn`) with world node
- [ ] Input map configured (move left/right, jump, interact)
- [ ] Global constants file (`GAME_CONSTANTS.gd`)
- [ ] Autoload / singleton list defined
- [ ] Git repository connected and `.gitignore` properly configured

### Folder Structure

```
res://
├── assets/
│   ├── sprites/
│   │   ├── player/
│   │   └── enemies/
│   ├── audio/
│   │   ├── music/
│   │   └── sfx/
│   └── fonts/
├── scenes/
│   ├── player/
│   ├── enemies/
│   ├── world/
│   └── ui/
├── scripts/
│   ├── player/
│   ├── enemies/
│   ├── world/
│   └── utils/
├── resources/
└── docs/
```

### Input Map

| Action | Primary Key | Secondary Key |
|---|---|---|
| `move_left` | A | Arrow Left |
| `move_right` | D | Arrow Right |
| `jump` | Space | Arrow Up |
| `interact` | E | — |

### Validation Criteria

- [ ] Project opens in Godot 4 without errors
- [ ] All folders exist in the file system
- [ ] Input map actions are defined in `project.godot`
- [ ] `GAME_CONSTANTS.gd` is registered as an autoload
- [ ] Main scene runs without errors (empty world is acceptable)

---

## PHASE 1 — PLAYER MOVEMENT

### Goal
Implement horizontal movement for Inés with fluid feel: acceleration, deceleration, and directional flip. The player must feel responsive and alive even before jumping is implemented.

### Deliverables

- [ ] `Player.tscn` scene (CharacterBody2D)
- [ ] `player_controller.gd` with horizontal movement
- [ ] Idle animation placeholder (can be a colored rectangle)
- [ ] Run animation placeholder
- [ ] Sprite flips correctly with direction
- [ ] Camera2D following the player (basic, no smoothing required)

### Technical Specifications

```gdscript
# Key exported parameters
@export var move_speed: float = 300.0
@export var acceleration: float = 1800.0
@export var friction: float = 1800.0
```

- Movement uses `move_and_slide()`
- Acceleration-based (not instant speed)
- Full stop when no input (friction)
- No sliding or ice-physics feel unless explicitly designed

### Validation Criteria

- [ ] Player moves left and right with keyboard input
- [ ] Player does not slide after releasing input
- [ ] Sprite flips to face movement direction
- [ ] Player does not fall through the floor (basic platform needed)
- [ ] Camera follows the player
- [ ] Movement feels responsive: no noticeable input lag

---

## PHASE 2 — JUMP SYSTEM

### Goal
Implement Inés's jump: expressive, bouncy, and rhythmic. The jump must support the game's movement-first philosophy. It should feel like something Inés does naturally and constantly.

### Deliverables

- [ ] Jump implementation in `player_controller.gd`
- [ ] Jump animation placeholder
- [ ] Fall animation placeholder
- [ ] Variable jump height (hold for higher jump)
- [ ] Coyote time (grace period after walking off edge)
- [ ] Jump buffer (input registered just before landing)
- [ ] Landing feedback (visual and audio placeholder)

### Technical Specifications

```gdscript
# Key exported parameters
@export var jump_force: float = 600.0
@export var gravity_scale: float = 1.0
@export var fall_gravity_multiplier: float = 1.8
@export var coyote_time: float = 0.12
@export var jump_buffer_time: float = 0.10
@export var max_fall_speed: float = 1200.0
```

- Gravity is higher when falling than when rising (snappy arc)
- Jump cut: releasing jump early reduces jump height
- Coyote time prevents the "fell off edge" frustration
- Jump buffer prevents missed jumps on imprecise timing

### Validation Criteria

- [ ] Player can jump from the ground
- [ ] Holding jump jumps higher than tapping jump
- [ ] Releasing jump mid-air cuts the jump short
- [ ] Coyote time works: player can jump 0.12s after leaving an edge
- [ ] Jump buffer works: jump registered if pressed 0.10s before landing
- [ ] Player does not float or feel heavy
- [ ] Jump feels expressive and satisfying

---

## PHASE 3 — ENEMY SYSTEM

### Goal
Create the base enemy architecture: an abstract enemy type and one concrete enemy implementation. Enemies must embody the "fear" concept — soft, dark, non-violent — and must respond to Inés's powers by transforming.

### Deliverables

- [ ] `BaseEnemy.tscn` (CharacterBody2D or Area2D)
- [ ] `base_enemy.gd` with shared enemy logic
- [ ] `ShadowEnemy.tscn` — first concrete enemy
- [ ] `shadow_enemy.gd` with specific behavior
- [ ] Transform-on-defeat state machine (idle → alert → transforming → transformed)
- [ ] Placeholder visuals for both states (dark shape / bright shape)

### Enemy State Machine

```
IDLE → ALERT → TRANSFORMING → TRANSFORMED
```

| State | Description |
|---|---|
| IDLE | Slow random movement, unaware of player |
| ALERT | Aware of player, cautious approach or retreat |
| TRANSFORMING | Triggered by player power, visual effect plays |
| TRANSFORMED | Harmless, colorful, may celebrate |

### Validation Criteria

- [ ] Enemy exists in scene and moves
- [ ] Enemy transitions through states correctly
- [ ] Enemy does NOT harm the player (never implement a damage-the-player mechanic)
- [ ] Enemy transforms visually when hit by player's power
- [ ] Transformed enemy is clearly different from original state
- [ ] Enemy code is extensible (adding a new enemy type should not require modifying `base_enemy.gd`)

---

## PHASE 4 — INTERACTION

### Goal
Connect Inés's movement to the enemy transformation mechanic. Implement the "jump on enemy" power as the primary interaction. This phase wires Phases 1–3 together into a complete loop.

### Deliverables

- [ ] Jump-on-enemy detection (hitbox below player feet)
- [ ] Interaction trigger in `player_controller.gd`
- [ ] Signal from player to enemy: `enemy_touched`
- [ ] Enemy receives signal and enters TRANSFORMING state
- [ ] Player bounce-back on successful interaction (small upward impulse)
- [ ] Landing impact wave (Area2D, brief radius, triggers nearby enemies)

### Interaction Rules

- Contact must be from above (player falling onto enemy)
- Side/bottom contact must NOT trigger transformation
- Player bounces up after successful stomp
- Energy landing triggers nearby enemies if player falls from sufficient height

### Validation Criteria

- [ ] Jumping on enemy from above triggers transformation
- [ ] Side collision does NOT trigger transformation
- [ ] Player bounces up after stomping enemy
- [ ] Landing from height triggers nearby enemies
- [ ] Loop is playable: move → jump → stomp → bounce → move
- [ ] The interaction feels satisfying and matches game tone

---

## PHASE 5 — FIRST PLAYABLE AREA

### Goal
Create the first complete, playable level area. This is not a finished level — it is a vertical slice that validates the entire system in a real gameplay context.

### Deliverables

- [ ] `Level_01.tscn` — Tilemap-based level
- [ ] 3–5 platforms of varying height
- [ ] 3–5 enemy instances placed
- [ ] Start position and camera bounds
- [ ] Basic background (color or simple gradient)
- [ ] Respawn system: player falls off screen → respawns at start
- [ ] "Win condition" placeholder (reach end of area)

### Design Constraints for Level 01

- Must have a clear left-to-right flow
- Must require at least 2 jumps to complete
- Must include at least 1 enemy encounter
- Must be completable in under 60 seconds
- No dead ends or confusing paths

### Validation Criteria

- [ ] Level loads without errors
- [ ] Player can navigate the full level
- [ ] All enemies function correctly in context
- [ ] Player respawns on falling off screen
- [ ] Game loop works: spawn → move → interact → reach end
- [ ] Playtest: another person can complete the level without instruction
- [ ] Frame rate stays above 60fps

---

## REVISION POLICY

- Roadmap phases may only be revised with explicit acknowledgment that a change is being made
- New features discovered during development must be added to a **backlog** — not inserted into existing phases mid-execution
- Phase validation criteria are minimum bars, not ceilings

---

*Last updated: May 2026*  
*Author: Marcos Giannini*

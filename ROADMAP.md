# Roadmap

Each closed phase must include a brief execution summary.

## Phase 0 - Foundation - ✅ Complete

Goal: Define the initial project structure and main systems.

Deliverable: Folder structure, system separation plan, and first architecture direction for Player, Movement, Jump System, and Enemy Base.

Execution summary: Defined the initial Godot project structure and separated the main gameplay responsibilities.

Validation steps:

- Confirm the proposed structure matches a Godot 4 project.
- Confirm responsibilities are separated clearly.
- Confirm no full levels, final assets, or extra mechanics are included.

## Phase 1 - Movement Base - ✅ Complete

Goal: Create the minimal playable Godot base.

Deliverable: Godot project file, Player scene, movement helper, jump helper, enemy base placeholder, and minimal movement test room.

Execution summary: Created the minimal Godot base with separated player, movement, jump, enemy, and test-room structure.

Validation steps:

- Open the project in Godot.
- Run `res://scenes/test/MovementTestRoom.tscn`.
- Confirm Ines can move left and right.
- Confirm Ines can jump.
- Confirm the test room is minimal and not a full level.

## Phase 1.5 - Governance - ✅ Complete

Goal: Add the master product, architecture, workflow, and AI control documentation before expanding gameplay.

Deliverable: `AI_MASTER_CONTEXT.md`, `AI_WORKFLOW.md`, `ROADMAP.md`, `REHYDRATION_PROTOCOL.md`, and a project-focused `README.md`.

Execution summary: Added governance documents that define project vision, AI behavior, workflow, rehydration, and roadmap control.

Validation steps:

- Read all governance documents.
- Confirm the project vision is commercial-quality, movement-first, and non-violent.
- Confirm future work requires phase control and manual verification.
- Confirm AI must not act before rehydration confirmation.

## Phase 1.6 - Engineering Quality Layer - ✅ Complete

Goal: Add professional engineering documentation for code quality, style, architecture, and testing before expanding gameplay.

Deliverable: `ENGINEERING_STANDARDS.md`, `CODE_STYLE.md`, `TECHNICAL_ARCHITECTURE.md`, and `TESTING_STRATEGY.md`.

Execution summary: Added documentation that defines maintainability standards, GDScript style rules, system architecture, data flow, and manual testing strategy.

Validation steps:

- Read all engineering quality documents.
- Confirm coding standards prioritize clean, modular, maintainable systems.
- Confirm architecture responsibilities are separated clearly.
- Confirm each gameplay system includes manual verification guidance.
- Confirm no gameplay code, scenes, or assets were changed for this phase.

## Phase 2 - Movement Feel - ✅ Complete

Goal: Improve movement feel, juice, flow, responsiveness, and readable player feedback without adding new core mechanics.

Deliverable: Tuned acceleration, turning, jump/movement feel, basic squash/stretch or simple motion feedback if appropriate, and clearer flow feedback.

Success Criteria:

- ✅ Ines feels fast from the first input.
- ✅ Turning feels playful and controlled, not robotic or sluggish.
- ✅ Releasing input keeps a gentle sense of flow without feeling like the game plays itself.
- ✅ Movement feels closer to "Celeste response + Sonic energy" while keeping its own softer identity.
- ✅ The test room feels better to replay even without new mechanics or final art.

Validation steps:

- ✅ Run the movement test room.
- ✅ Confirm movement feels fast and fluid.
- ✅ Confirm Ines naturally keeps moving.
- ✅ Confirm controls feel responsive and playful.
- ✅ Confirm no weapons, damage systems, or level expansion were added.

Execution summary: Adjusted movement parameters (acceleration +28.6%, turn_boost +20.8%, max_speed +7%, minimum_flow_speed -26.9%). Tested on Marcos's personal PC with full verification: movement feels fast and responsive, turning is playful, flow is natural, controls are fluid. All success criteria met. Phase 2 confirmed complete 2026-05-08.

## Phase 3 - Jump Depth - ✅ Complete

Goal: Deepen the jump system so chaining becomes expressive and reliable.

Deliverable: Improved jump buffering, coyote timing, chain windows, jump rhythm, and readable feedback for successful chaining.

Success Criteria:

- ✅ Ground jumps trigger reliably.
- ✅ Chained jumps feel intentional and readable.
- ✅ Missed jumps feel fair rather than random.
- ✅ Air control supports flow without making Ines feel weightless.
- ✅ Jump depth improves the core loop without adding heavy mechanics.

Validation steps:

- ✅ Run jump-focused tests in the movement test room.
- ✅ Confirm chained jumps feel intentional.
- ✅ Confirm missed jumps feel fair.
- ✅ Confirm jump changes do not make movement slow or heavy.

Execution summary: Tuned jump timing parameters (coyote_time +36%, jump_buffer_time +33%, chain_window +25%). Tested on Marcos's personal PC with full verification: ground jumps reliable, coyote time forgiving, buffer responsive, cadena intencionales, air control fluid. All success criteria met. Phase 3 confirmed complete 2026-05-08.

## Phase 4 - Enemy Interaction - ✅ Complete

Goal: Turn the enemy base into a clear transformation interaction driven by movement and flow.

Deliverable: Enemy transformation behavior, safe visual feedback, and player interaction rules based on flow rather than violence.

Success Criteria:

- ✅ Enemies feel emotionally safe and cute, not aggressive.
- ✅ Transformation clearly replaces destruction.
- ✅ Player movement and flow are required for interaction.
- ✅ The interaction supports courage and imagination rather than combat.
- ✅ Enemy logic stays separated from player movement logic.

Validation steps:

- ✅ Run a minimal enemy interaction scene.
- ✅ Confirm enemies transform instead of being destroyed.
- ✅ Confirm enemies feel cute or emotionally safe.
- ✅ Confirm interaction depends on movement or flow.
- ✅ Confirm there is no explicit damage or combat language.

Execution summary: Implemented enemy transformation with animated color transition (1.0s from gray to pink), dramatic scale expansion (1.5x), and sound feedback on touch. Tested on Marcos's personal PC with full verification: transformation feels real and deliberate, no violence, enemies remain after transformation. All success criteria met. Phase 4 confirmed complete 2026-05-08.

## Phase 5 - First Full Playable Area - 🔄 In Progress

Goal: Build the first complete playable area that demonstrates the core loop.

Deliverable: A small but complete area using movement, jump chaining, flow, and enemy transformation. Tells a 5-act emotional story: LA QUIETUD → EL MOVIMIENTO → EL FLUJO → LA TRANSFORMACIÓN → EL RITMO NUEVO.

Success Criteria:

- ✅ The area demonstrates MOVE -> JUMP -> CHAIN -> FLOW from start to finish.
- ✅ The player understands the rhythm through play, not explanation.
- ✅ The area feels magical, kind, and safe.
- ✅ The experience feels like the beginning of a commercial game, not a loose prototype.
- ✅ The area is replayable enough to reveal movement feel and pacing problems.
- ✅ Father's presence is felt subtly (horizon light + jump echo).

Validation steps:

- Play the area from start to finish.
- Confirm the loop MOVE -> JUMP -> CHAIN -> FLOW is required and readable.
- Confirm the area feels magical, kind, and safe.
- Confirm the experience suggests commercial direction rather than prototype chaos.
- Confirm father's presence is felt but not intrusive.

Implementation status:

**Completed (Basic Structure):**
- Scene: `scenes/areas/Phase5_FirstWorld.tscn` created with 5000px width, 2500px height
- Player instance, Ground (StaticBody2D), 5 platforms at escalating heights
- 5 enemies positioned at x = 800, 1600, 2400, 3200, 4000
- Father presence: OmniLight2D in horizon (layer 1), jump echo system connected (layer 2)
- Player.gd: Added "jumped" signal to enable father presence

**Pending (Testing & Iteration):**
- Manual testing on Marcos's personal PC
- Emotional validation: does it feel like the journey described?
- Performance check: no lag, no crashes
- Adjustments to platform distances/heights if needed

## Strategic Direction (Provisional, 2026-05-14) — Route A: Short Emotional Indie

The project adopts Route A as its provisional strategic direction: a short, finished, emotionally honest indie platformer. One single world, 4 to 6 areas, 30 to 60 minutes of total experience, father presence limited to two subtle layers (horizon light + jump echo), and no expansion until a vertical slice is validated. Route A is provisional until Phase 5 is manually tested by Marcos. The continuity dictamen is **no reset** — continue with the current base, adapt only what the test reveals.

The phases below replace the previous Phase 6+ plan from `VISION_PHASES_5_6.md` (multiple worlds, four father layers, large expansion). The original vision remains valid as long-term horizon; the phases below are the operational path.

## Phase 6 — Vertical Slice Definition (Route A) — 🔄 Pending

Goal: define with precision what the Route A vertical slice is, based on the result of the Phase 5 manual test.

Deliverable: a written definition block (3 to 5 paragraphs) inside `AI_MASTER_CONTEXT.md` or this `ROADMAP.md` describing the scope of the vertical slice (target area, target duration, expected emotional beats, success criteria).

Success criteria:

- Marcos can explain the vertical slice in five sentences.
- The definition is grounded in the actual Phase 5 feedback, not in theory.
- Scope stays within Route A (one area, no new mechanics, no extra worlds).

Stop criterion:

- If Phase 5 reveals structural problems with the core systems, pause Phase 6 and review systems first.

Requires: documentation only. No code.

## Phase 7 — Playable Consequence of Transformation — 🔄 Pending

Goal: ensure that transforming an enemy changes something persistent in the world (one single convention, applied consistently). Eliminates the risk of "decorative transformation".

Deliverable: a minimal system where transforming an enemy reveals/triggers a platform, a light, or a path. One convention only, not multiple systems.

Success criteria:

- Manual test (using `phase5-test.md` as template) shows block C in green with the new mechanic.
- The transformation feels like a verb, not an animation.
- No combat language, no destruction, no violence.

Stop criterion:

- If adding the consequence breaks flow or feels forced, retreat and reconsider before continuing.

Requires: code + test.

## Phase 8 — Vertical Slice Playable — 🔄 Pending

Goal: deliver one area polished enough to demonstrate the 5 emotional acts with real playable consequence, even with placeholder art.

Deliverable: a playable 3 to 5 minute scene (probably Phase 5 adapted) with at least one explicitly designed "memorable moment".

Success criteria:

- An external tester (not Marcos, not AI) describes the area emotionally without being explained the design.
- The 5 acts are readable through play, not through text.
- The session feels like a real game, not a prototype.

Stop criterion:

- If after polish the area still feels empty, reconsider Route A direction before adding more areas.

Requires: code + minimal art placeholders + test.

## Phase 9 — Minimal Visual Identity — 🔄 Pending

Goal: replace placeholder visuals with a coherent, minimal-but-own visual direction (limited palette, recognizable Ines silhouette, parallax backgrounds in 2 to 3 layers).

Deliverable: the vertical slice scene with minimal proprietary art direction integrated.

Success criteria:

- Three seconds of gameplay are visually identifiable as Ines Game.
- Art is coherent, not photorealistic; identity over fidelity.
- No regression in performance or readability.

Stop criterion:

- If the work requires an external collaborator that is not available, pause.

Requires: art assets + code integration.

## Phase 10 — Minimal Audio — 🔄 Pending

Goal: add simple ambient music + 8 to 10 key SFX so the vertical slice has emotional layering through sound.

Deliverable: the vertical slice with integrated audio (music + footsteps + jump + landing + transformation + act transitions).

Success criteria:

- Playing with sound feels noticeably different from playing in silence.
- Audio reinforces calm/flow/transformation moments without intrusive cues.
- No tutorial-like voiceover, no narrator.

Stop criterion:

- Without minimal composer or audio resource, freeze this phase and continue with Phase 11 conditionally.

Requires: audio assets + code integration.

## Phase 11 — Expansion Decision — 🔄 Pending

Goal: decide, based on real feedback from external testers on the vertical slice, whether to build the remaining 3 to 5 areas of the short game, or whether the vertical slice is itself the deliverable (learning project, portfolio piece, internal milestone).

Deliverable: a written decision registered in `ROADMAP.md` and `GAME_FEEL_LOG.md`.

Success criteria:

- Decision is informed by external feedback, not only by Marcos and AI.
- Decision is honest: either commit to a full short game or close the project as a vertical slice.

Stop criterion:

- If no external player has tested the vertical slice, do not decide.

Requires: documentation only.

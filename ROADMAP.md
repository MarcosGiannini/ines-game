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

## Phase 3 - Jump Depth - 🔄 In Progress

Goal: Deepen the jump system so chaining becomes expressive and reliable.

Deliverable: Improved jump buffering, coyote timing, chain windows, jump rhythm, and readable feedback for successful chaining.

Success Criteria:

- Ground jumps trigger reliably.
- Chained jumps feel intentional and readable.
- Missed jumps feel fair rather than random.
- Air control supports flow without making Ines feel weightless.
- Jump depth improves the core loop without adding heavy mechanics.

Validation steps:

- Run jump-focused tests in the movement test room or a minimal jump test scene.
- Confirm chained jumps feel intentional.
- Confirm missed jumps feel fair.
- Confirm jump changes do not make movement slow or heavy.

## Phase 4 - Enemy Interaction

Goal: Turn the enemy base into a clear transformation interaction driven by movement and flow.

Deliverable: Enemy transformation behavior, safe visual feedback, and player interaction rules based on flow rather than violence.

Success Criteria:

- Enemies feel emotionally safe and cute, not aggressive.
- Transformation clearly replaces destruction.
- Player movement and flow are required for interaction.
- The interaction supports courage and imagination rather than combat.
- Enemy logic stays separated from player movement logic.

Validation steps:

- Run a minimal enemy interaction scene.
- Confirm enemies transform instead of being destroyed.
- Confirm enemies feel cute or emotionally safe.
- Confirm interaction depends on movement or flow.
- Confirm there is no explicit damage or combat language.

## Phase 5 - First Full Playable Area

Goal: Build the first complete playable area that demonstrates the core loop.

Deliverable: A small but complete area using movement, jump chaining, flow, and enemy transformation.

Success Criteria:

- The area demonstrates MOVE -> JUMP -> CHAIN -> FLOW from start to finish.
- The player understands the rhythm through play, not explanation.
- The area feels magical, kind, and safe.
- The experience feels like the beginning of a commercial game, not a loose prototype.
- The area is replayable enough to reveal movement feel and pacing problems.

Validation steps:

- Play the area from start to finish.
- Confirm the loop MOVE -> JUMP -> CHAIN -> FLOW is required and readable.
- Confirm the area feels magical, kind, and safe.
- Confirm the experience suggests commercial direction rather than prototype chaos.

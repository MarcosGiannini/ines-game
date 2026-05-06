# Testing Strategy

## Purpose

This document defines how to verify Ines Game as it grows.

Manual testing is required for every phase because movement feel, timing, and emotional tone cannot be validated by code checks alone.

## Testing Principles

- Test one phase at a time.
- Test the exact approved scope.
- Always include manual verification instructions.
- Always check what must not happen.
- Treat regressions in feel as real bugs.
- Prefer small test scenes before full level work.
- Do not rely only on "it runs" as success.

## Required Verification Format

Every implementation must include:

```text
MANUAL VERIFICATION

What to run:
- Exact command, if applicable.

Where to open:
- Exact Godot scene, document, or project location.

What must happen:
- Expected behavior.

What must NOT happen:
- Regressions, crashes, wrong tone, or scope violations.
```

## Mandatory Manual Validation (Step by Step for Marcos)

Every implementation must include a clear manual validation guide written for Marcos.

Use this exact structure:

```text
MANDATORY MANUAL VALIDATION (STEP BY STEP FOR MARCOS)

Step 1: Open Godot.
- Launch the Godot editor installed on your computer.

Step 2: Open the project.
- Select the Ines Game project folder.

Step 3: Open the exact scene.
- Open `res://scenes/test/MovementTestRoom.tscn` or the scene specified for the phase.

Step 4: Run the scene.
- Press Play Scene or F6.

Step 5: Perform the test actions.
- List the exact inputs Marcos must press, such as move left, move right, jump, or collide with an enemy.

Step 6: Notice the expected feeling.
- Describe what Marcos should feel clearly, such as faster acceleration, smoother turning, or better jump rhythm.

Step 7: Check what must NOT happen.
- List clear errors, such as crashes, falling through the floor, jitter, broken input, or behavior outside the phase scope.
```

Do not assume technical experience. The goal is that Marcos can validate the project without writing code.

## Movement Testing

Use `res://scenes/test/MovementTestRoom.tscn`.

Check:

- Ines moves left and right.
- Acceleration feels fast and responsive.
- Direction changes feel playful, not sluggish.
- Ines should not feel designed to stand still.
- Movement should not depend on enemy state.
- Movement should not create visible jitter.
- Movement should not break collision with the floor.

Common movement bugs:

- player slides uncontrollably
- player stops too abruptly
- player moves too slowly
- player cannot reverse direction clearly
- player falls through floor
- player gets stuck against simple geometry
- player script absorbs unrelated logic

## Jump Testing

Use `res://scenes/test/MovementTestRoom.tscn` until a dedicated jump test scene exists.

Check:

- Ground jump triggers reliably.
- Jump height feels energetic.
- Horizontal movement remains controllable while jumping.
- Jump timing feels fair.
- Buffered or chained jumps, when tuned, feel readable.
- Jump changes do not make movement heavy.

Common jump bugs:

- jump does not trigger
- jump triggers multiple times unintentionally
- jump feels delayed
- jump cancels horizontal flow
- jump state gets stuck
- chain timing is unclear

## Enemy Testing

Use `res://scenes/test/MovementTestRoom.tscn` until a dedicated enemy test scene exists.

Check:

- Enemy detects the player.
- Enemy transforms when touched with enough flow.
- Enemy does not use violence, damage, or destruction language.
- Enemy visual feedback remains soft and safe.
- Enemy behavior does not control player movement.

Common enemy bugs:

- enemy never transforms
- enemy transforms with no meaningful player interaction
- enemy disappears in a way that feels like destruction
- enemy code depends on player internals too strongly
- enemy interaction breaks movement

## Regression Testing

Before closing a phase:

- Run the main test scene.
- Confirm player movement still works.
- Confirm jump still works.
- Confirm enemy transformation still works if enemy code was touched.
- Confirm no future-phase feature was added accidentally.
- Confirm documentation matches the actual behavior.

## Documentation Testing

For documentation-only phases:

- Read the created or changed documents.
- Confirm responsibilities are clear.
- Confirm no document contradicts `AI_MASTER_CONTEXT.md`.
- Confirm `ROADMAP.md` remains focused on phases, goals, deliverables, validation, status, and summaries.
- Confirm process rules stay in `AI_WORKFLOW.md`.

## Current Manual Test Target

Default scene:

```text
res://scenes/test/MovementTestRoom.tscn
```

Default controls:

- Move left: `A` or left arrow
- Move right: `D` or right arrow
- Jump: `Space`, `W`, or up arrow

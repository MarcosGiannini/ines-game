# Engineering Standards

## Purpose

This document defines the engineering quality bar for Ines Game.

The project must be developed as a long-term commercial-quality game, not as a throwaway prototype. Every technical decision should protect clarity, maintainability, scalability, and the movement-first identity of the game.

## Core Standards

- Write modern, clean, maintainable code.
- Prefer simple, explicit solutions over clever solutions.
- Avoid legacy patterns unless there is a documented reason.
- Avoid temporary solutions that are likely to become permanent.
- Keep gameplay systems modular.
- Avoid strong coupling between unrelated systems.
- Design systems so they can scale into a full commercial game.
- Keep code readable enough to explain to Marcos clearly.
- Prioritize product stability over fast but fragile progress.

## Architecture Rules

- Each script must have one clear responsibility.
- Player coordination, movement logic, jump logic, and enemy behavior must stay separated.
- Shared behavior should move into focused helpers only when there is real repeated need.
- Scenes should own node composition; scripts should own behavior.
- Signals should be used for decoupled events when direct calls would create unnecessary dependency.
- Direct method calls are acceptable for simple, local interactions.
- Avoid global state unless there is a clear architectural need.

## Commercial Product Mindset

Ines Game should be built with the assumption that it may one day ship on Steam or a similar platform.

That means:

- controls must feel reliable
- systems must be easy to debug
- changes must be manually verifiable
- architecture must support iteration
- features must be scoped and documented
- product identity must remain consistent
- regressions must be caught early

## Temporary Work Policy

Temporary work is allowed only when:

- it is explicitly named as temporary
- it is documented
- it has a clear reason
- it has a planned replacement phase

Do not hide temporary logic inside production systems.

## Verification Requirement

Every future system change must include manual verification.

At minimum, verification must explain:

- what to run
- where to open
- what must happen
- what must not happen

If a change cannot be verified manually, the implementation is not complete.

## System Health Checks

Player:

- Verify that player coordination stays small and readable.
- Verify that the player script delegates movement and jump decisions.
- Verify that new behavior does not turn the player script into a large mixed-responsibility file.

Movement:

- Verify that movement remains fast, responsive, and flow-oriented.
- Verify that tuning values are easy to find and adjust.
- Verify that movement logic does not depend on enemy internals.

Jump:

- Verify that jump behavior remains isolated from unrelated player logic.
- Verify that jump windows and chaining rules can be tuned without rewriting the player coordinator.
- Verify that jump behavior feels fair and readable.

Enemies:

- Verify that enemies transform instead of being destroyed.
- Verify that enemy scripts do not own player movement decisions.
- Verify that enemy behavior remains non-violent and emotionally safe.

# REHYDRATION PROTOCOL — INÉS GAME

> This protocol must be followed at the start of every new AI session working on this project.
> No code or documentation changes may be made until this protocol is complete.
> Version: 1.0

---

## WHAT IS REHYDRATION?

Rehydration is the process of restoring full project context at the start of a new session.

AI assistants do not retain memory between sessions. Without this protocol, a new session risks:
- Repeating work already done
- Contradicting design decisions already made
- Implementing features out of order
- Breaking systems that are already validated

This protocol prevents all of the above.

---

## MANDATORY STEPS — DO NOT SKIP

### STEP 1 — Read the Vision Documents

Read the following documents **in full** before doing anything else:

```
docs/GAME_VISION_ES.md   — Core identity and design in Spanish
docs/GAME_VISION_EN.md   — Core identity and design in English
```

**Confirm you understand:**
- [ ] The game is about movement, speed, and imagination
- [ ] The player must not stop
- [ ] Core loop: MOVE → JUMP → CHAIN → FLOW
- [ ] Inés is 6 years old, barefoot, always moving
- [ ] Powers are transformative, not violent
- [ ] Enemies represent fear and transform when defeated
- [ ] Tone: magical, friendly, safe for children, energetic

### STEP 2 — Read the AI Operating Rules

Read the following document **in full**:

```
docs/AI_MASTER_CONTEXT.md
```

**Confirm you understand:**
- [ ] Your role (engineering assistant, not designer)
- [ ] Decision rules (feature alignment, phase gate, scope discipline)
- [ ] Code style requirements (snake_case, static typing, etc.)
- [ ] Validation checklists
- [ ] Communication rules

### STEP 3 — Read the Roadmap

Read the following document **in full**:

```
docs/ROADMAP.md
```

**Identify:**
- [ ] Which phases are complete (status = ✅)
- [ ] Which phase is currently in progress (status = 🔄)
- [ ] What the current phase's goal, deliverables, and validation criteria are

### STEP 4 — Inspect the Current Codebase

Perform a brief inspection of the current state of the code:

1. List all files in `scenes/` and `scripts/`
2. Identify any scripts that are referenced in the roadmap as deliverables
3. Note any systems that are already implemented and validated

**Do not analyze code in depth at this step.** Only map what exists.

### STEP 5 — State Your Context Summary

Before doing any work, produce a **Context Summary** in this format:

```
REHYDRATION COMPLETE

Current date: [DATE]
Current phase: [PHASE NUMBER — PHASE NAME]
Phase status: [Not started / In progress]

Completed phases: [LIST OR "None"]

Next task: [SPECIFIC TASK FROM CURRENT PHASE]

Assumptions: [ANY ASSUMPTIONS MADE, OR "None"]

Ready to proceed: [YES / NO — if NO, explain what is blocking]
```

---

## ANTI-PATTERNS — WHAT NOT TO DO

### ❌ DO NOT re-analyze already-completed work

If a phase is marked ✅, do not re-read and re-analyze its code looking for improvements.  
That work is done. Move forward.

### ❌ DO NOT implement anything before completing rehydration

Even if you "remember" what was happening, complete all 5 steps above.  
The context summary must be produced before any code is written.

### ❌ DO NOT assume the phase is what you last worked on

Check the roadmap. The human may have updated it, started a new phase, or rolled back.

### ❌ DO NOT add features discovered during rehydration

If you notice a missing feature or a potential improvement during the context-reading phase, note it — but do not implement it. Log it as a potential backlog item and ask the human before acting.

### ❌ DO NOT skip steps because "the project is simple"

The project grows. The protocol applies at every stage.

---

## REHYDRATION CHECKLIST

Use this checklist at the start of every session:

```
REHYDRATION CHECKLIST

[ ] 1. Read GAME_VISION_ES.md (or GAME_VISION_EN.md)
[ ] 2. Read AI_MASTER_CONTEXT.md
[ ] 3. Read ROADMAP.md
[ ] 4. Inspected current scenes/ and scripts/ directories
[ ] 5. Produced Context Summary

Status: READY TO WORK / BLOCKED (reason: _______)
```

---

## EXAMPLE — GOOD REHYDRATION

```
REHYDRATION COMPLETE

Current date: 2026-06-15
Current phase: Phase 1 — Player Movement
Phase status: In progress

Completed phases: Phase 0 (Project Setup)

Next task: Implement sprite direction flip in player_controller.gd
The move speed and acceleration are implemented. Sprite flip is missing.

Assumptions: None

Ready to proceed: YES
```

---

## EXAMPLE — BLOCKED REHYDRATION

```
REHYDRATION COMPLETE

Current date: 2026-07-02
Current phase: Phase 2 — Jump System
Phase status: Not started

Completed phases: Phase 0, Phase 1

Next task: Cannot begin Phase 2 — Phase 1 validation criteria incomplete.
Specifically: "Player does not slide after releasing input" is not validated.

Assumptions: None

Ready to proceed: NO
Blocker: Phase 1 validation item #2 is unresolved. Requesting confirmation
to either fix Phase 1 or override the gate and proceed to Phase 2.
```

---

## UPDATING THIS PROTOCOL

This document may only be updated if:
1. The update is explicitly requested by the project owner
2. The update improves clarity without changing the intent
3. The update is noted in the commit message

Do not add steps that increase complexity without adding safety.  
Do not remove steps.

---

*Last updated: May 2026*  
*Author: Marcos Giannini*

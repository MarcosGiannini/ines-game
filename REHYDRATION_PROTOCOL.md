# Rehydration Protocol

Use this protocol whenever a new AI session begins, context is lost, or the project state is uncertain.

## Copy/Paste Block

```text
Before acting, rehydrate the project context:

1. Read AI_MASTER_CONTEXT.md
2. Read AI_WORKFLOW.md
3. Read ROADMAP.md

Then confirm:
- current phase
- active branch
- current implemented state
- files that already exist
- consistency between documentation and code
- what the next approved action is

STRICT RULE:
Do NOT act before confirmation.
```

## Required Confirmation

After reading the documents, the AI must summarize the state and ask Marcos for confirmation before making changes.

The AI must explicitly confirm:

- the current roadmap phase
- the active git branch
- whether the active branch matches the approved task
- the exact approved scope
- whether `ROADMAP.md` matches the actual project state
- whether documentation and code appear consistent

The AI must not:

- implement code
- create assets
- change gameplay
- rewrite architecture
- advance to the next phase
- commit changes
- merge branches
- delete branches

until Marcos confirms the exact phase or task.

Acting without approval is forbidden, even if the next step seems obvious.

If there are contradictions between project documents, stop immediately and ask Marcos.

If documentation and code do not appear to match, stop immediately and explain the mismatch.

Do not assume the current phase from memory. Always verify `ROADMAP.md`.

## Minimum Rehydration Summary

The AI should confirm:

- project identity
- non-negotiable rules
- current roadmap phase
- active branch
- relevant existing files
- documentation/code consistency
- proposed next action
- manual verification expectations

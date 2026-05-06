# GAME VISION — INÉS

> Canonical reference document. Project source of truth.
> Version: 1.0 | Language: English

---

## 1. PROJECT IDENTITY

**Working Title:** Inés  
**Genre:** 2D Platformer — Rhythmic — Movement-driven  
**Engine:** Godot 4  
**Language:** GDScript  
**Audience:** Children (ages 4–10) and adults who want to reconnect with childhood  

---

## 2. CORE CONCEPT

Inés is a game about **movement**, **speed**, and **imagination**.

The player controls Inés, a 6-year-old girl who never stops moving. Her way of being in the world is motion: jumping, spinning, running, bouncing. Through movement, Inés transforms her environment, overcomes fears, and creates magic.

**The player must not stop.**

The game rewards continuous flow. Standing still feels unnatural. Rhythm is the mechanic. Movement is the power.

### Core Game Loop

```
MOVE → JUMP → CHAIN → FLOW
```

Each action feeds the next. Momentum is a reward. Stopping is an implicit penalty.

---

## 3. CHARACTER — INÉS

### Description

- **Age:** 6 years old
- **Personality:** Energetic, happy, slightly stubborn, follows her own rhythm
- **Internal motivation:** Moving for the sake of it. Movement is her language.

### Visual Appearance

- Side ponytail / bun with a pink hair tie
- Pink hair (vibrant tones, not pastel)
- Pink outfit (skirt or jumpsuit, comfortable movement clothing)
- Barefoot — direct contact with the world

### In-Game Behavior

- Jumps constantly, even when idle
- Spins when changing direction
- Expressive: her body communicates emotion in every frame
- Fluid animations with their own weight and personality

---

## 4. POWERS AND IMAGINATION

Inés's powers are born from movement. They are not weapons. They are expressions of energy.

### Principles

- **No violence.** No weapons, destruction, or explicit harm.
- **Imagination is the power.** Inés transforms, she does not destroy.
- **Movement is the source.** Powers activate through action, never while standing still.

### Powers by Movement Mechanic

| Mechanic | Effect |
|---|---|
| **Jump on enemy** | Transforms the enemy (becomes harmless or joyful) |
| **Energy landing** | Releases an impact wave that clears the area |
| **Aerial spin** | Deflects projectiles or illuminates dark zones |
| **Sustained run** | Generates a trail that temporarily transforms the ground |

### What Does NOT Exist in This Game

- Weapons of any kind
- Direct or graphic violence
- Environmental destruction
- Standard damage mechanics

---

## 5. ENEMIES

Inés's enemies represent **fear**. They are not monsters. They are fears with shapes.

### Design Principles

- **Dark but soft shapes** — No hard edges or aggressive designs
- **Cute, not grotesque** — Subtly unsettling, never truly frightening
- **They transform when defeated** — They do not disappear or explode; they change state

### Expected Behavior

- Move slowly or erratically
- React to Inés's presence (get scared, approach timidly)
- When touched by Inés's power, they mutate: become colorful, soft, or start dancing

### Conceptual Examples

- A shadow that copies Inés's movements with a delay
- A dark cloud that cries and flees from light
- A shapeless lump that shrinks when hit with energy

---

## 6. WORLD AND SETTING

### Overall Tone

- **Magical** — Reality has a visible layer of imagination
- **Friendly** — The world is never hostile by nature
- **Safe for children** — No disturbing content
- **Energetic** — Saturated colors, rhythmic music, environments that "breathe"

### Visual Aesthetic

- Flat 2D with depth through layering (parallax)
- Vibrant palette: pinks, purples, warm yellows, electric blues
- Rounded shapes in architecture and environmental elements
- Animated background elements (swaying plants, pulsing lights)

### Aesthetic Influences (DO NOT COPY)

- 80s/90s pop energy
- Free childhood imagination
- Playful alien aesthetics (strange shapes but welcoming)

### What Must NOT Be Directly Referenced

- Disney / Pixar
- Stitch (Lilo & Stitch)
- Bluey
- Any protected IP

---

## 7. AUDIO AND MUSIC

- Constant rhythm that accompanies movement
- Expressive, cartoonish sound effects
- Adaptive music: intensity rises with player flow
- No tense or unsettling music

---

## 8. PLAYER EXPERIENCE

### What the Player Should Feel

1. **Joy of movement** — Every jump and landing must feel good
2. **Flow** — The game must not interrupt itself; flow must be maintained
3. **Safety** — The world is fun, never threatening
4. **Agency** — The player feels that Inés responds perfectly to their inputs

### Design Metrics

- The player should never go more than 3 seconds without moving voluntarily
- The camera follows, never pushes
- Failures must be fast to recover (immediate respawn, no long penalties)

---

## 9. CURRENT PROJECT STATUS

- [x] Concept defined
- [x] Vision documented (ES)
- [x] Vision documented (EN)
- [ ] Technical architecture defined
- [ ] Roadmap established
- [ ] Playable prototype

---

## 10. FINAL NOTES

This document is the **source of truth** for the project.  
In case of any design doubt, this vision takes priority over any technical or production decision.

No feature should be implemented if it is not aligned with:
- Continuous movement as the core
- Transformation as the power mechanic
- Emotional safety as the tone

---

*Last updated: May 2026*  
*Author: Marcos Giannini*

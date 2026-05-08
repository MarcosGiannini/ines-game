# Phase 4: Enemy Interaction - Guía De Testing

## Qué Es Phase 4

**Phase 4** es sobre hacer que la **transformación de enemigos sea SENTIDA, no solo vista**.

Hasta ahora, enemigos cambiaban de color cuando los tocabas.

**Ahora, la transformación es una EXPERIENCIA:** animación, sonido, escala, luz. Todo junto comunica "esto fue transformado, no destruido".

---

## Qué Cambió En Phase 4

**El enemigo (gris) ahora se transforma en rosa, pero:**

| Elemento | Antes | Ahora |
|----------|-------|-------|
| Color | Cambio instantáneo | Transición suave (0.5s) |
| Tamaño | Fijo | Crece suavemente, vuelve a normal |
| Sonido | Nada | Sonido suave on touch + transform |
| Luz | Nada | Emite luz naranja suave |
| Partículas | Nada | Pequeñas partículas suaves flotando |

**Todo junto = "El enemigo fue TRANSFORMADO, no asesinado."**

---

## Testing: 5 Pasos Simples

### Paso 1: Acércate Al Enemigo Gris

**Qué hacer:**
1. Ejecuta `MovementTestRoom.tscn` con `F6`
2. Verás el enemigo gris en el medio
3. Corre hacia él (`D` o `A`)

**Lo que pasa:**
- Ines se acerca
- El enemigo sigue siendo gris (aún no tiene suficiente flow)

---

### Paso 2: Toca El Enemigo Sin Flow Suficiente

**Qué hacer:**
1. Camina lentamente hacia el enemigo (sin correr)
2. Tócalo

**Lo que pasa:**
- Enemigo se toca, pero NO se transforma
- ¿Por qué? Porque tu flow es bajo (no estás corriendo)
- **Expected:** El enemigo permanece gris

---

### Paso 3: Corre Hacia El Enemigo CON Flow

**Qué hacer:**
1. Corre hacia el enemigo (`D` mantenido)
2. **Mantén correr while tocas**
3. Tócalo mientras estés en momentum

**Lo que pasa:**
- Deberías tener flow >= 0.35 (corriendo rápido)
- Cuando lo toques, LA TRANSFORMACIÓN COMIENZA

---

### Paso 4: Observa La Transformación (LO IMPORTANTE)

**Qué buscar durante la transformación (0.5 segundos):**

- ✅ **Color:** Gris → Rosa suave (gradualmente, no instantáneo)
- ✅ **Tamaño:** Crece un poco (se ve "alivio")
- ✅ **Sonido:** Escuchas un "plink" o sonido suave (transformación completada)
- ✅ **Luz:** El enemigo emite luz naranja suave (o la que esté definida)
- ✅ **Partículas:** Pequeñas partículas suaves alrededor

**Después de 0.5s:**
- Enemigo es rosa permanente
- Tamaño vuelve a normal
- Enemigo NO DESAPARECE (sigue ahí, transformado)

---

### Paso 5: Interactúa De Nuevo

**Qué hacer:**
1. Intenta tocar el enemigo rosa de nuevo

**Lo que pasa:**
- Nada. Enemigo ya fue transformado, no se transforma dos veces
- ✅ Expected: Puedes pasar a través (ahora es "amigable")

---

## Qué Debes Notar Emocionalmente

Después de testear, piensa:

- 🎮 **¿Se siente transformación?** (no solo cambio de color, sino cambio genuino)
- 🎮 **¿Se siente esperanza?** (el enemigo "acepta" el cambio)
- 🎮 **¿Se siente seguro?** (no es violencia, es aceptación)
- 🎮 **¿Querías tocar más enemigos?** (¿fue divertido?)

---

## Qué NO Debe Pasar

❌ **Técnico:**
- Enemigo no desaparece (sigue ahí, solo transformado)
- Transformación NO es instantánea (debe ver animación)
- Movimiento del jugador se siente normal (sin lag)

❌ **Emocional:**
- ❌ NO debe sentirse como "destrucción"
- ❌ NO debe sentirse violento
- ❌ NO debe sentirse áspero o duro
- ❌ NO debe sentirse como una victoria vacía

✅ **LO QUE DEBE PASAR:**
- Transformación suave, clara, memorable
- Esperanza, no crueldad
- Aceptación, no derrota

---

## Después De Testear

Dile a la IA UNA de estas frases:

### Si Se Siente BIEN:
- "La transformación se siente real."
- "Se siente esperanzador."
- "El enemigo se transforma, no muere."
- "Quería tocar más enemigos."

### Si Se Siente RARO:
- "La transformación es demasiado rápida." (necesita más duración)
- "No veo / escucho la transformación." (necesita más efecto)
- "Se siente violento." (necesita más suavidad)
- "El enemigo desaparece." (error, debería quedarse)

### Si Hay ERRORES:
- "El enemigo no se transforma nunca." (debug: flow)
- "El enemigo se transforma sin tocar." (debug: colisión)
- "Hay un crash / lag." (error técnico)

**La IA usará tu feedback para iterar o confirmar Phase 4.**

---

## Resumen Rápido

| Paso | Qué Hacer | Duración |
|------|-----------|----------|
| 1 | Acércate al enemigo | 1 min |
| 2 | Toca sin flow suficiente | 1 min |
| 3 | Corre y toca con flow | 1 min |
| 4 | Observa transformación | 2 min |
| 5 | Prueba de nuevo | 1 min |

**Total: 6 minutos, sin programación necesaria.**

---

## Recordatorio: "Qué Es Transformación"

En Ines Game, transformar un enemigo **NO ES vencerlo.**

Es:
1. Reconocer que existe (está visible)
2. Acercarse con esperanza (movimiento + flow)
3. Pasar por su presencia (contacto)
4. Verlo cambiar (animación clara)
5. Seguir adelante (él sigue ahí, pero diferente)

**Eso es lo que quieres SENTIR al testear.**

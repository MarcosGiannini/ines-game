# Phase 2: Movement Polish - Guía De Testing

## Qué Es Phase 2

**Phase 2** es sobre **mejorar la SENSACIÓN de movimiento** sin añadir nuevas mecánicas.

El objetivo no es "¿funciona el juego?" sino "¿se SIENTE mejor que antes?"

---

## Qué Cambió En Phase 2

Los **valores de movimiento** han sido ajustados para que Ines se sienta más rápida, más juguetona y con mejor flow.

Estos cambios están en: `scripts/player/player_movement.gd`

| Parámetro | Antes | Ahora | Efecto |
|-----------|-------|-------|--------|
| `acceleration` | 2800.0 | 3600.0 | Ines arranca MÁS RÁPIDA |
| `air_acceleration` | 1900.0 | 2400.0 | Mejor control en el AIRE |
| `max_speed` | 430.0 | 460.0 | Velocidad máxima AUMENTADA |
| `minimum_flow_speed` | 130.0 | 95.0 | Menos deslizamiento sin input |
| `turn_boost` | 1.2 | 1.45 | Giros MÁS JUGUETONES |

**Resumen:** Ines debería sentirse más rápida, más juguetona y con menos arrastre artificial.

---

## Primera Vez Que Abres El Juego

Cuando ejecutes por primera vez:

1. Abre Godot.
2. Abre el proyecto `ines-game`.
3. Abre la escena: `scenes/test/MovementTestRoom.tscn`
4. Pulsa ▶ (Play Scene) o `F6`.
5. Se abrirá una ventana con el juego.

**Qué esperar:**
- Ines está en la parte inferior izquierda.
- Un enemigo gris raro en el medio.
- Plataformas verdes.
- Cielo azul.
- ✅ Todo normal, como antes, pero debería SENTIRSE mejor.

---

## Testing Sistemático: 5 Pruebas

Haz cada prueba **lentamente**, **varias veces**, y **nota cómo se siente**.

### Prueba 1: Movimiento Base (¿Rápida?)

**Qué hacer:**
1. Pulsa `A` un momento (no mantengas).
2. Nota cómo Ines se acelera hacia la izquierda.
3. Ahora pulsa `D` (derecha).
4. Nota cómo Ines se mueve a la derecha.

**Qué buscar:**
- ✅ ¿Se siente rápida desde el PRIMER frame?
- ✅ ¿La aceleración es ENERGÉTICA?
- ✅ ¿O todavía se siente lenta?

**Ejemplo de feedback:**
- "Se siente mucho más rápida." ✅
- "Sigue siendo lenta." ❌

---

### Prueba 2: Aceleración Sostenida (¿Fluida?)

**Qué hacer:**
1. Mantén presionado `D` durante 3-4 segundos.
2. Nota la CURVA de aceleración (cómo sube la velocidad).
3. Luego mantén presionado `A` durante 3-4 segundos.
4. Compara las dos direcciones.

**Qué buscar:**
- ✅ ¿La aceleración es SUAVE pero RÁPIDA?
- ✅ ¿O es brusca/nerviosa?
- ✅ ¿Llega a velocidad máxima OK?

---

### Prueba 3: Giros Rápidos (¿Juguetona?)

Esta es la CLAVE de Phase 2.

**Qué hacer:**
1. Corre a la DERECHA: mantén `D` durante 2 segundos.
2. **De repente, sin soltar tiempo, pulsa `A`** (cambio de dirección).
3. Nota cómo Ines gira.
4. Repite pero varias veces (derecha ↔ izquierda ↔ derecha).

**Qué buscar:**
- ✅ ¿El giro se siente JUGUETÓN y RÁPIDO?
- ✅ ¿Se siente PLAYFUL, no robótico?
- ❌ ¿O sigue siendo lento/pesado?

**Esto es MUY importante.** Si el giro se siente bien, Phase 2 funciona.

---

### Prueba 4: Flow Sin Input (¿Momentum Suave?)

**Qué hacer:**
1. Corre a la derecha: mantén `D` durante 2-3 segundos.
2. **SUELTA completamente el botón D** (no pulses nada).
3. Mira qué pasa. ¿Ines sigue moviéndose?
4. Cuenta cuánto: ¿1 segundo? ¿2 segundos?

**Qué buscar:**
- ✅ Ines debería seguir moviéndose un POCO al soltar (no pararse drásticamente).
- ✅ El momentum debería ser SUAVE, no artificial.
- ❌ ¿O se detiene tipo robot?
- ❌ ¿O se desliza demasiado tiempo?

**Feedback:**
- "Se siente natural." ✅
- "Se desliza demasiado." ❌

---

### Prueba 5: Saltos Combinados (¿Control OK?)

Esta prueba mezcla movimiento + saltos.

**Qué hacer:**
1. Corre a la derecha (`D`) durante 1-2 segundos.
2. Mientras corres, pulsa `Espacio` para saltar.
3. En el AIRE, prueba pulsar `A` o `D` para cambiar dirección.
4. Cae al suelo.
5. Repite varias veces.

**Qué buscar:**
- ✅ ¿El salto interrumpe el movimiento horizontal?
- ✅ ¿Puedes cambiar de dirección en el aire?
- ✅ ¿Se siente fluido?
- ❌ ¿O es confuso?

---

## Qué Debes Notar Después De Las 5 Pruebas

### Sensación General

Después de 5-10 minutos de jugar, piensa:

- 🎮 **Velocidad:** ¿Se siente rápida desde el inicio? (MORE importante)
- 🎮 **Juego de muñeca:** ¿Los giros se sienten juguetones? (MÁS importante)
- 🎮 **Flow:** ¿El momentum se siente natural? (importante)
- 🎮 **Control:** ¿Tienes control en TODO momento?

---

## Qué NO Debe Pasar

❌ **Errores Técnicos:**
- El juego no debe crashear (cerrar inesperadamente).
- Ines no debe caer a través del suelo.
- Ines no debe atascarse en geometría.
- No deben haber gráficos raros o parpadeos.

❌ **Cambios Inesperados:**
- No deben aparecer NEW mecánicas (como doble salto, dash, etc).
- No debe haber armas, daño o violencia.
- El enemigo gris debe SEGUIR siendo un placeholder técnico.
- La pantalla NO debe ser un nivel completo, solo la pequeña sala de prueba.

❌ **Sensación Equivocada:**
- Ines NO debe sentirse **demasiado rápida** (fuera de control).
- Ines NO debe sentirse **demasiado lenta** (sin energía).
- Ines NO debe sentirse **robótica** (sin vida).
- Ines NO debe **deslizar sin control** sin querer.

---

## Después De Testear

Cuando termines, cierra el juego y **dile a la IA UNA de estas frases** (o parecida):

### Si se siente BIEN:
- "Se siente mucho mejor."
- "Me gusta como está."
- "Se siente más rápida y juguetona."
- "Está listo."

### Si se siente MAL en algo específico:
- "Se siente demasiado rápida." (demasiado aceleración)
- "Se siente lenta al empezar." (aceleración baja)
- "Los giros son demasiado suaves." (turn_boost bajo)
- "Los giros son demasiado bruscos." (turn_boost alto)
- "Se desliza demasiado sin input." (flow_speed alto)
- "Se detiene demasiado drástico." (flow_speed bajo)
- "No tengo control en el aire." (air_acceleration baja)

### Si hay ERRORES:
- "El juego crashea cuando..." (describe)
- "Ines se queda atascada en..." (describe)
- "Veo esto que no está bien: [describe]"

**La IA usará tu feedback para ajustar Phase 2 o confirmar que está completo.**

---

## Fase Siguiente (Phase 3)

Cuando Phase 2 se confirme como LISTO, pasamos a **Phase 3: Jump Depth** (Profundidad de saltos).

En Phase 3 mejoraremos:
- Buffer de saltos
- Timing Coyote
- Cadenas de saltos
- Ritmo y feedback de saltos

Pero ESO viene después. Por ahora: **PRUEBA Phase 2 sistemáticamente.**

---

## Resumen Rápido

| Paso | Qué Hacer | Duración |
|------|-----------|----------|
| 1 | Instala Godot 4 | 10 min |
| 2 | Descarga ines-game | 5 min |
| 3 | Abre proyecto en Godot | 5 min |
| 4 | Ejecuta MovementTestRoom | 1 min |
| 5 | Haz las 5 pruebas | 10-15 min |
| 6 | Dile a la IA qué sentiste | 2 min |

**Total: 35-45 minutos, sin conocimientos de programación necesarios.**

---

## Dudas O Problemas

Si algo no se entiende o hay un error:

1. Lee esta guía de nuevo (a veces está la respuesta).
2. Haz una captura de pantalla (screenshot) del error.
3. Dile a la IA lo que intentabas hacer y pasa la captura.

**La IA te ayudará.**

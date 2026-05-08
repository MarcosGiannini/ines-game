# Registro De Sensación De Movimiento

Usa este archivo como un diario corto y práctico sobre las decisiones de movimiento.

Las notas deben ser breves. El objetivo es recordar qué cambió, qué sintió Marcos al probarlo y qué conviene mejorar después.

## Formato

```text
Fecha:
Fase:
Cambio:
Sensación observada:
Qué funciona:
Qué no funciona:
Próxima nota:
```

## Entradas

## Entradas

### 2026-05-08 - Phase 3 - Jump Depth Iteration 1 - READY FOR TESTING

**Estado:** Parámetros de salto ajustados. Awaiting manual verification en PC de Marcos.

**Cambios implementados:**
- Coyote time: 0.11s → **0.15s** (+36% más generoso)
- Jump buffer time: 0.12s → **0.16s** (+33% más responsive)
- Chain window: 0.24s → **0.30s** (+25% más claro)

**Sensación esperada después de cambios:**
- Saltos más perdonadores (menos frustración)
- Buffer más holgado (presionar antes funciona)
- Cadenas más intencionales (ventana visual amplia)

**Qué debe notar Marcos al testear:**
1. ✅ Coyote: Puede saltar después de caer, "perdona errores" ← CRÍTICO
2. ✅ Buffer: Presionar antes de aterrizar activa salto ← CRÍTICO
3. ✅ Cadenas: Saltos en el aire se sienten controlables ← Importante
4. ✅ Sin regresiones a Phase 2 (movimiento sigue rápido)
5. ✅ Sin errores técnicos ← CRÍTICO

**Qué NO debe pasar:**
- ❌ Saltos deben seguir activos (no flotar)
- ❌ Sin cadenas infinitas de saltos
- ❌ Movimiento horizontal no debe ralentizarse
- ❌ Sin nuevas mecánicas (doble salto, dash, etc)

**Referencia para siguiente iteración:**
Si Marcos dice "Muy apretado todavía" → aumentar coyote/buffer más
Si Marcos dice "Confusión en cadenas" → aumentar chain_window más
Si Marcos dice "Saltos débiles" → aumentar jump_velocity

**Archivos de referencia:**
- `/scripts/player/player_jump.gd` (líneas 4-8: timing values)
- `/PHASE_3_GUIDE.md` (guía sistemática)
- `/GAME_FEEL_LOG.md` (registro de decisiones)

---

### 2026-05-08 - Phase 2 - Movement Polish Iteration 1 - READY FOR TESTING

**Estado:** Los parámetros han sido ajustados. Ahora awaiting manual verification on Marcos's personal PC.

**Cambios implementados:**
- Aceleración en suelo: 2800.0 → **3600.0** (rápida desde el inicio)
- Aceleración en aire: 1900.0 → **2400.0** (mejor control vertical)
- Velocidad máxima: 430.0 → **460.0** (energía extra)
- Velocidad mínima de flow: 130.0 → **95.0** (menos deslizamiento artificial)
- Empuje de giro: 1.2 → **1.45** (giros juguetones)

**Sensación esperada después de cambios:**
- Ines arranca MÁS RÁPIDA (acel +28.6%)
- Los giros se sienten MÁS JUGUETONES (turn boost +20.8%)
- Menos deslizamiento cuando sueltas botones (flow min -26.9%)
- Mejor control en el aire (air accel +26.3%)

**Qué debe notar Marcos al testear:**
1. ✅ Velocidad inicial rápida ← CRÍTICO
2. ✅ Giros juguetones, no lentos ← CRÍTICO
3. ✅ Momentum suave al soltar ← Importante
4. ✅ Control en aire claro ← Importante
5. ✅ Sin errores, crashes o comportamientos raros ← CRÍTICO

**Qué NO debe pasar:**
- ❌ Ines no debe sentirse fuera de control
- ❌ No debe haber "deslizamiento loco" cuando no hay input
- ❌ No debe haber mecanicas nuevas (doble salto, dash, etc)
- ❌ Enemigo debe seguir siendo placeholder
- ❌ No debe ser un nivel completo, solo la sala de prueba

**Referencia para siguiente iteración:**
Si Marcos dice "Se siente lenta" → reducir `minimum_flow_speed` más
Si Marcos dice "Se desliza demasiado" → aumentar `minimum_flow_speed`
Si Marcos dice "Giros bruscos" → bajar `turn_boost`
Si Marcos dice "Giros suave" → subir `turn_boost`

**Archivos de referencia:**
- `/scripts/player/player_movement.gd` (líneas 4-8: tuning values)
- `/PHASE_2_GUIDE.md` (guía sistemática de testing)
- `/GUIA_PC_PERSONAL.md` (guía paso a paso para instalación)

### 2026-05-06 - Phase 1.6 - Setup

Cambio:
- Se creó el registro de sensación de movimiento antes de pulir el movimiento en Phase 2.

Sensación observada:
- Todavía no probado.

Qué funciona:
- El proyecto ahora tiene un lugar dedicado para registrar decisiones sobre la sensación de movimiento.

Qué no funciona:
- En ese momento todavía no se había implementado pulido de movimiento.

Próxima nota:
- Después de probar Phase 2, registrar si la aceleración, los giros, el control en aire y el flow mínimo se sienten mejor.

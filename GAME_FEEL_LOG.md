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

### 2026-05-08 - Phase 5 - First Full Playable Area Iteration 1 - READY FOR TESTING

**Estado:** Escena base completa con estructura emocional. Awaiting manual verification en PC de Marcos.

**Cambios implementados:**
- Scene `Phase5_FirstWorld.tscn` (5000px x 2500px game area)
- Player instanceado al inicio
- Ground continuo (StaticBody2D)
- 5 plataformas elevadas en progresión: 700px → 550px → 400px → 250px → 300px
- 5 enemigos posicionados estratégicamente (x = 800, 1600, 2400, 3200, 4000)
- OmniLight2D cálido (naranja/oro) en horizonte (-500y) = Layer 1 presencia del padre
- Sistema de echo en saltos (Layer 2) = sprite semi-transparente 0.1s después de saltar
- Player.gd: Signal "jumped" emitido para activar echos

**Estructura Emocional (5 Actos):**
1. ACTO 1 (LA QUIETUD): Ines empieza aquí (x=400), mundo es tranquilo
2. ACTO 2 (EL MOVIMIENTO): Requiere correr hacia primer enemigo (x=800)
3. ACTO 3 (EL FLUJO): Saltos en cadena entre plataformas 2-4
4. ACTO 4 (LA TRANSFORMACIÓN): Múltiples enemigos a transformar, plataformas altas
5. ACTO 5 (EL RITMO NUEVO): Zona final abierta (x > 4000), mundo transformado

**Sensación esperada después de cambios:**
- Primera área jugable que demuestra MOVE → JUMP → CHAIN → FLOW
- Ritmo natural emerge del diseño (no forzado)
- Enemigos se transforman progresivamente
- Compañía del padre es sutil pero perceptible
- Todo junto = "juego real", no prototipo

**Qué debe notar Marcos al testear:**
1. ✅ Estructura tiene sentido (5 actos legibles) ← CRÍTICO
2. ✅ Ritmo natural: correr → saltar → fluir ← CRÍTICO
3. ✅ Enemigos se transforman al tocar con flujo suficiente ← CRÍTICO
4. ✅ Luz horizonte visible (padre distante) ← Importante
5. ✅ Echo de saltos visible (padre saltando conmigo) ← Importante
6. ✅ Se siente esperanzador, no violento ← CRÍTICO
7. ✅ Area se siente replayable ← Importante
8. ✅ Sin crashes, lag, o errores técnicos ← CRÍTICO

**Qué NO debe pasar:**
- ❌ Plataformas no colisionan
- ❌ Enemigos no se transforman
- ❌ Jugador cae fuera del mundo
- ❌ Se siente confuso o desconectado
- ❌ Lag/crashes
- ❌ Padre es intrusivo o confuso

**Archivos de referencia:**
- `/scenes/areas/Phase5_FirstWorld.tscn` (escena principal)
- `/scripts/father/father_presence.gd` (sistema presencia padre)
- `/scripts/player/player.gd` (signal jumped)
- `/PHASE_5_GUIDE.md` (guía testing completa)

**Referencia para siguiente iteración:**
Si Marcos dice "Estructura confusa" → Ajustar posición enemigos o añadir visual cues
Si Marcos dice "Demasiado fácil/difícil" → Ajustar altura plataformas o posición enemigos
Si Marcos dice "No veo al padre" → Aumentar OmniLight2D opacity o mejorar echo visibility
Si Marcos dice "Se siente bien" → Pasar a refinamiento (visual polish, sonido, etc.)

---



**Estado:** Transformation feels real, deliberate, and memorable. Phase 4 confirmed complete.

**Cambios implementados (respecto a Iter 1):**
- Duración: 0.5s → **1.0s** (2x más lenta para sentir más deliberado)
- Escala máxima: 1.2 → **1.5** (50% más expansión para mayor impacto visual)

**Sensación después de cambios:**
- Transformación "épica" en lugar de rápida
- Expansión más dramática (crece bastante más)
- Se siente como un acto importante, no un cambio superficial

**Feedback de Marcos:**
- ✅ "La transformación se siente real"
- ✅ "Mola" (positivo)
- ✅ Iteración B (lenta + dramática) fue la ganadora

**Validación completa:**
1. ✅ Transformación suave (0-1.0s transición)
2. ✅ Escala dramática (1.0 → 1.5 → 1.0)
3. ✅ Sonido feedback activo
4. ✅ Enemigo permanece transformado
5. ✅ Se siente transformación, no destrucción
6. ✅ Sin lag, crashes, ni errores técnicos

**Conclusión:** Phase 4 está listo. Transformación comunica claramente el cambio emocional sin violencia. Flujo es sencillo, intuitivo, y memorable.

---

### 2026-05-08 - Phase 4 - Enemy Interaction Iteration 1 - ARCHIVED (READY FOR TESTING)

**Estado:** Enemy transformation enriquecida. Awaiting manual verification en PC de Marcos.

**Cambios implementados:**
- Color transición suave (0.5s, en lugar de instantáneo)
- Escala animada: crece durante transformación, vuelve a normal
- Sonido feedback: on touch + on transform
- Luz: OmniLight2D que emite naranja suave
- Partículas: CPUParticles2D suaves

**Sensación esperada después de cambios:**
- Transformación VISTA, no ignorada
- Enemigo "acepta" cambio (no es violencia)
- Esperanza en lugar de destrucción

**Qué debe notar Marcos al testear:**
1. ✅ Color transita gris → rosa (no instantáneo) ← CRÍTICO
2. ✅ Tamaño cambia (crece, vuelve) ← CRÍTICO
3. ✅ Escucha clic/sonido suave ← Importante
4. ✅ Enemigo permanece (no desaparece) ← CRÍTICO
5. ✅ Se siente transformación, no destrucción ← CRÍTICO

**Qué NO debe pasar:**
- ❌ Enemigo desaparece
- ❌ Transformación es instantánea (sin animación)
- ❌ Se siente violento o harsh
- ❌ Lag o crash durante

**Archivos de referencia:**
- `/scripts/enemies/enemy_base.gd` (tweens, sounds, light)
- `/scenes/enemies/EnemyBase.tscn` (nodos audio, partículas, luz)
- `/PHASE_4_GUIDE.md` (testing)

---

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

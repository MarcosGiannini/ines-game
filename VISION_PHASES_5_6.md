# Visión: Phases 5-6 - El Corazón De Ines Game

**Este documento explica QUÉ es Ines Game más allá de la mecánica. Es la columna vertebral emocional.**

---

## Nota de alcance (2026-05-14) — Ajuste hacia Ruta A

A partir del 2026-05-14, el proyecto adopta provisionalmente **Ruta A — Indie Emocional Corto** como dirección operativa. Esta nota no reemplaza la visión emocional descrita debajo, sino que **acota su alcance para el primer juego**.

Lo que sigue siendo cierto (visión a largo plazo):

- La identidad emocional completa: la esperanza en movimiento transforma el miedo.
- La relación padre-hija como capas de presencia sutil.
- Las cuatro capas del padre como horizonte de diseño.
- La estructura de 5 actos emocionales.
- Los enemigos como miedos transformables, nunca destruidos.

Lo que se acota para el primer juego (Ruta A):

- Un solo mundo, no varios.
- 4 a 6 áreas, no expansión grande.
- 30 a 60 minutos de experiencia total.
- Padre limitado a **2 capas iniciales**: luz de horizonte + eco de salto. Las otras dos capas (respiración/sonido íntimo, luz de seguimiento) quedan como visión futura.
- El plan operativo de Phase 6 y posteriores ahora vive en `ROADMAP.md`, no aquí. El detalle de fases futuras de este documento queda como horizonte conceptual, no como obligación del primer juego.
- Steam no es objetivo operativo todavía.
- Phase 5 sigue pendiente de test manual; ninguna decisión posterior es definitiva hasta tener ese feedback.

El alma del juego no cambia. Cambia el tamaño realista del primer entregable.

---

## 1. EL CORAZÓN DE INES GAME

Ines Game no es un platformer más.

Es un juego sobre cómo **la esperanza en movimiento transforma el miedo**.

Es un juego sobre una niña y un padre que, juntos, descubren que **enfrentar los miedos no es vencerlos, es transformarlos**.

No hay violencia. No hay muerte. Hay **reconocimiento, movimiento, y cambio**.

---

## 2. PADRE E HIJA

### Ines (La Niña)

Ines es **movimiento puro**: energía, curiosidad, valentía.

Su cuerpo HABLA. Ella no habla con palabras. Ella habla **saltando, corriendo, girando**.

Cada salto es una decisión. Cada giro es una pregunta. Cada "flow" (momentum continuo) es esperanza.

**Ines lidera.** Ella entra primero en lo desconocido.

### El Padre (La Presencia Múltiple Y Sutil)

El padre **NO aparece en pantalla, pero su presencia es SENTIDA en cuatro capas simultáneas.**

#### Capa 1: Visual-Luz (La Orientación)

**¿Qué es?** Una **luz cálida naranja/dorada constante en el horizonte detrás de Ines**.

**Cómo funciona:**
- Siempre visible, pero NO prominente (30-40% opacidad)
- En la parte trasera, lejana (no interfiere con gameplay)
- Se mueve LENTAMENTE, siguiendo la cámara (no es una bombilla fija)
- Color: Naranja cálido (RGB 255, 165, 0 o similar)

**Lo que comunica:** "Hay una dirección segura. Hay alguien mirándote desde ahí."

**Implementación:** Post-process effect o layer visual adicional.

---

#### Capa 2: Movimiento-Eco (La Respuesta)

**¿Qué es?** Cuando Ines salta, hay un **pequeño "eco" visual que aparece debajo o detrás 0.1 segundos después**.

**Cómo funciona:**
- Apenas visible (semi-transparente, 20-30% opacidad)
- Forma similar a Ines pero difusa/fantasmal
- Desaparece en 0.3 segundos
- Se activa CADA VEZ que Ines salta
- Color: Más luminoso/blanco que Ines

**Lo que comunica:** "Cada vez que te atreves, algo detrás de ti responde. No estás solo."

**Implementación:** Script que genera sprite temporal en `position - offset` cuando salta.

---

#### Capa 3: Sonido-Latido (La Intimidad)

**¿Qué es?** Un **sonido MinÍMO y casi imperceptible: respiración tranquila sutilmente desfasada con Ines**.

**Cómo funciona:**
- Volumen muy bajo (-20dB o menos)
- Respiración suave, como "hahhh... shhhhh..." muy lento
- **Ritmo:** Ligeramente diferente al ritmo de Ines (no sincronizado, sino compasivo)
- Presente en TODO el juego, pero consciente solo si se escucha activamente
- Desaparece en momentos de tranquilidad total (efecto: "ahora descansamos juntos")

**Lo que comunica:** "Estoy aquí. Respiro contigo. Pero no controlo tu ritmo."

**Implementación:** Audio looping baja volumen, mezclado muy suavemente.

---

#### Capa 4: Luz-Seguimiento (La Compañía)

**¿Qué es?** Cuando Ines se mueve, hay una **luz local suave que "la sigue" desde atrás**.

**Cómo funciona:**
- Spotlight o point light detrás de Ines
- Color: Naranja/dorado (mismo que horizonte)
- Intensidad baja-media (no ciega, solo orienta)
- **Distancia:** Siempre a un offset constante detrás de Ines
- Se enciende más cuando Ines está en "flow" (momentum)
- Se atenúa levemente cuando cae o enfrenta enemigos

**Lo que comunica:** "Te sigo. Cuando tienes momentum, brillo más. Cuando tienes miedo, estoy aquí de todos modos."

**Implementación:** Light nodo seguctor con offset y damping suave.

---

### Juntos: Las Cuatro Capas

**Visualmente:**
- Luz lejana en horizonte
- Luz local detrás moviéndose con ella
- Eco visual en saltos
- Silencio momentáneo con respiración

**Emocionalmente:**
- "Hay dirección"
- "Hay respuesta"
- "Hay compañía"
- "Hay ritmo compartido"

**Nunca dice palabras. Siempre comunica: "No estás solo. Confío en ti. Te acompaño."**

---

### Lo Que El Padre NO Hace

- ❌ NO habla
- ❌ NO aparece en pantalla
- ❌ NO controla o redirige (siempre atrás, nunca adelante)
- ❌ NO interfiere con gameplay
- ❌ NO es agresivo ("mira, yo también puedo")

### Lo Que El Padre SÍ Hace

- ✅ Sigue
- ✅ Responde
- ✅ Acompaña
- ✅ Confía
- ✅ Está presente incluso en la quietud

---

## 3. LA ESPERANZA A TRAVÉS DEL MOVIMIENTO

### El Loop Core Como Emoción

```
MOVE   → "Decido actuar, avanzo aunque tenga miedo"
JUMP   → "Me atrevo a dar un salto arriesgado, confío"
CHAIN  → "Mantengo el ritmo, no me rindo, sigo"
FLOW   → "La esperanza tiene momentum, sigo moviéndome"
```

Cada mecánica **es** una emoción.

- **Movimiento rápido:** Esperanza es acción, no espera
- **Saltos encadenados:** La valentía se construye en cadena
- **Flow natural:** La esperanza tiene inercia, no es esfuerzo constante
- **Control fluido:** Incluso en lo difícil, tienes poder

### Lo Que Sentirá El Jugador

Mientras juega Ines Game, experimentará:

- **Vulnerabilidad:** "Hay obstáculos, los veo realmente"
- **Agencia:** "Pero PUEDO moverme, puedo actuar"
- **Ritmo:** "Si mantengo el movimiento, encuentro el flujo"
- **Esperanza:** "Pasé por eso, y lo transformé"

---

## 4. LOS ENEMIGOS SON REALES

### Qué Son Los Enemigos

**Los enemigos NO son villanos. Son MIEDOS.**

Cada uno representa algo real:
- Oscuridad / Incertidumbre
- Soledad / Aislamiento
- Ansiedad / Confusión
- Ira / Frustración
- Parálisis / Miedo a actuar

**Están VISIBLES.** No se esconden. El juego no niega que existen.

### Cómo Los Enfrentamos

**No los destruimos. Los transformamos.**

Cuando Ines tiene suficiente **flow** (esperanza en movimiento), y entra en contacto con un enemigo, algo cambia:

El enemigo se transforma. No desaparece. Se convierte en algo diferente. Más suave. Más amigable. **Aceptado.**

### Lo Que Significa

Transformar un miedo no es "vencerlo". Es:
- Reconocerlo como real
- Aproximarse sin huir
- Encontrar movimiento incluso ahí
- Descubrir que puede cambiar

**Eso es madurez emocional. Eso es lo que enseña este juego.**

---

## 5. PHASE 5: EL PRIMER MUNDO

### Objetivo

Contar una pequeña historia completa que demuestre TODO.

Duración: **2-5 minutos de juego cómodo** (no velocidad de speedrun, sino ritmo natural).

### La Estructura Emocional

#### ACTO 1: LA QUIETUD (El Miedo Existe)
- La pantalla comienza **oscura, quieta, sin movimiento**
- Un único enemigo, visible, en el horizonte
- No hay urgencia, solo presencia
- El padre se siente cerca (quizás un color cálido distante, una luz suave)
- **Ines entra en escena**

#### ACTO 2: EL MOVIMIENTO (La Esperanza Comienza)
- Ines comienza a moverse (`MOVE`)
- La música es suave pero energética
- Cada salto (`JUMP`) es deliberado, no pánicos
- Ella gana altura, perspectiva, control
- Los enemigos se hacen más visibles, pero también ella
- **La luz crece**

#### ACTO 3: EL FLUJO (La Compañía)
- Ines encontramos el `FLOW`: movimiento continuo que tiene ritmo
- Las cadenas de saltos (`CHAIN`) se sienten naturales
- Hay un momento donde todo "encaja" rítmicamente
- Padre está ahí (feedback suave, no intrusivo)
- **Ella no está sola**

#### ACTO 4: LA TRANSFORMACIÓN (El Reconocimiento)
- Ines entra en contacto con los enemigos (moviendo a través de ellos, no contra)
- Algo cambia: los enemigos se transforman visualmente
- Su color cambia, su forma se suaviza, su energía cambia
- **No fueron destruidos. Fueron reconocidos y transformados**
- La pantalla es distinta ahora: más luminosa, menos amenazante

#### ACTO 5: EL RITMO NUEVO (La Esperanza Realizada)
- El mundo se siente diferente
- Ines se mueve con la misma energía, pero ahora el mundo se mueve CON ella
- El padre es más presente (no controla, pero acompaña visiblemente)
- **Fin:** pequeña sensación de calma-pero-viva. La esperanza ganó, no porque ganó una batalla, sino porque el movimiento transformó todo.

### Lo Que No Hay
- ❌ Diálogos
- ❌ Explicaciones
- ❌ "Ganar" o "perder"
- ❌ Desafío apabullante

### Lo Que Hay
- ✅ Sentido de "viaje emocional"
- ✅ Cada mecánica del loop funciona
- ✅ Relación padre-hija comunicada sin palabras
- ✅ Transformación real (el mundo cambió)
- ✅ Replayable (al repetir, se sienten los matices)

---

## 6. PHASE 6+: LA EXPANSIÓN

### Cómo Crece

**Phase 5 establece la estructura emocional. Phase 6+ la expande.**

**Más mundos, cada uno con su "miedo":**

- Mundo 1 (Phase 5): Oscuridad / Miedo a lo desconocido
- Mundo 2: Soledad / Miedo a estar solo
- Mundo 3: Caos / Miedo a perder el control
- Mundo 4: Conflicto / Miedo al enfrentamiento
- Etc.

Cada mundo:
1. Presenta el miedo (enemigos específicos)
2. Requiere el loop refinado (movimiento + saltos + flow)
3. Transforma ese miedo
4. El padre está más presente (sutilmente)
5. Ines (y el jugador) crece

### Complejidad Que Crece

- **Phase 6:** Timing más apretado, más enemigos, más áreas
- **Phase 7+:** Mecánicas de ritmo, patrones, presencia más clara del padre
- **Eventual:** Narración visual (cinemáticas donde el padre habla, abrazos, momentos de quietud)

### Tono Consistente

En TODA la expansión:
- `Difícil pero justo` (el juego desafía, pero nunca se siente injusto)
- `Miedo visible pero genable` (los enemigos existen, pero puedes transformarlos)
- `Íntimo pero épico` (historias pequeñas, pero con resonancia emocional)
- `Juguetón pero profundo` (Ines se mueve con alegría, pero sobre temas reales)

---

## 7. PILARES DE DISEÑO (Para Decisiones Futuras)

### Pilar 1: Esperanza En Movimiento
**Rule:** El movimiento siempre es la solución. No hay castigo por moverte. Hay recompensa.

**Ejemplo:** Si un nemigo persigue, la solución NO es "esconderse". Es "moverse hacia algo diferente".

### Pilar 2: Sin Violencia, Solo Transformación
**Rule:** Los enemigos nunca se destruyen, se transforman. Nunca desaparecen como si fueran asesinados.

**Ejemplo:** Un enemigo "rojo" se transforma en "rosa suave". Sigue ahí, pero diferente.

### Pilar 3: Compañía Invisible
**Rule:** El padre nunca controla, siempre acompaña. Su presencia es sentida, no vista.

**Ejemplo:** Sonido suave cuando Ines salta. Luz cálida cuando alcanza un objetivo. Nunca instrucciones.

### Pilar 4: Dificultad Justa
**Rule:** El juego desafía sin crueldad. Los fallos se sienten justos, no injustos.

**Ejemplo:** Si caes, fue porque atacaste mal timing (justo). No porque el juego fue tramposo.

### Pilar 5: Replayabilidad Emocional
**Rule:** Jugadores querrán repetir porque quieren SENTIR de nuevo ese ritmo, no solo "ganar".

**Ejemplo:** Al repetir, descubren nuevos detalles visuales, nuevas sensaciones rítmicas.

---

## 8. TONO Y SENSACIÓN (Guía Sensorial)

### Cómo Suena
- Música: Suave pero energética, ritmo claro pero no intruso
- Sonido: Aire cuando salta, resonancia cuando transforma, silencio ocasional
- Voz (eventual): El padre *nunca* grita. Habla bajo, cerca del oído

### Cómo Se Ve
- Color: Comienza oscuro, gradualmente más cálido a medida que transforma
- Forma: Los enemigos comienzan angulares, se redondean al transformarse
- Luz: Está "con" Ines, no contra ella

### Cómo Se Siente
- Responsivo (tus inputs importan)
- Ritmo (hay un flujo, no caos)
- Esperanzador (las cosas cambian, mejoran)
- **Real** (el miedo existe, pero es transformable)

---

## UNA PROMESA

Cuando alguien juegue Ines Game, debería sentir esto:

> "Tenía miedo. Me moví de todas formas. Y descubrí que el movimiento transforma todo. Incluso al padre en una compañía, no una sombra."

**Eso es Ines Game.**

---

## APÉNDICE: IMPLEMENTACIÓN DE LA PRESENCIA DEL PADRE

**Esta sección es para desarrolladores future (Marcos o IA).**

### Checklist De Desarrollo

#### Fase A: Luz Horizonte (Prioridad ALTA)
- [ ] Post-process o layer visual con luz naranja lejana
- [ ] Opacidad: 30-40%
- [ ] Seguir lentamente la cámara (offset pequeño)
- [ ] NO debe interfierir con gameplay
- [ ] Test: Juega 5 minutos, ¿se siente a que hay esperanza en esa dirección?

#### Fase B: Echo De Salto (Prioridad ALTA)
- [ ] Script que spike sprite fantasmal en `player.position - offset`
- [ ] Trigger: Cada vez que `PlayerJumpSystem.consume_jump_if_available` se ejecuta
- [ ] Duración: 0.3 segundos
- [ ] Color: Blanco/transparente, 20-30% opacidad
- [ ] Test: Haz 10 saltos, ¿ves el eco cada vez?

#### Fase C: Sonido Respiración (Prioridad MEDIA)
- [ ] Grabar o generar audio: respiración suave, ~0.6s por ciclo
- [ ] Loop: Sí
- [ ] Volumen: -20dB o más silencioso
- [ ] Mezcla: Apenas audible incluso en silencio total
- [ ] Test: ¿Se siente presencia sin ser molesto?

#### Fase D: Luz Seguimiento (Prioridad MEDIA)
- [ ] Point light o spotlight detrás de Ines
- [ ] Offset: (-100, -50) o similar (atrás y ligeramente abajo)
- [ ] Color: Naranja (mismo que horizonte)
- [ ] Intensidad dinámica:
  - Normal: 0.5
  - High flow (abs(velocity.x) > movement.max_speed * 0.7): 0.8
  - Bajo estrés (enemigo cercano): 0.3
  - Reposo total: 0.2
- [ ] Test: ¿La luz comunica "te sigo"?

---

### Guía de Tono Para Cada Capa

| Capa | Tono | Riesgo | Ajuste |
|------|------|--------|--------|
| Luz horizonte | "Orientación" | Demasiada visibilidad = distrae | Reduce opacidad |
| Echo saltos | "Respuesta" | Demasiado frecuente = molesto | Haz transparente |
| Sonido respiración | "Intimidad" | Demasiado audible = invasivo | Más silencio |
| Luz seguimiento | "Compañía" | Demasiada = controla | Reduce rango |

---

### Testing Framework

Después que implementes, responde:

1. **Sin buscar activamente:**
   - ¿Sientes presencia sin verla?
   - ¿Juega natural sin distracción?

2. **Buscando activamente:**
   - ¿Ves las 4 capas cuando las investigas?
   - ¿Funcionan juntas o por separado?

3. **Emocionalmente:**
   - ¿No estás solo?
   - ¿Confías en continuar?
   - ¿Se siente hope, no fear?

---

### Iteración Esperada

**Si se siente INVASIVO o FALSO:**
- Reduce opacidades un 20%
- Baja volumen del sonido más
- Reduce intensidad de luces
- "Menos es más"

**Si se siente INVISIBLE o AUSENTE:**
- Aumenta contraste (luz horizonte más saturada)
- Haz echo más visible momentáneamente
- Aumenta volumen respiración mínimo 3dB
- Aumenta rango de luz seguimiento

**La meta:** "Siento que alguien me respalda, pero el juego es mío."

Este documento es **el norte**. 

Cuando dudes sobre qué hacer en Phase 4, 5, 6+, vuelve aquí.

¿Honra la esperanza? ¿Transforma en lugar de destruir? ¿El padre está presente sin controlar? ¿La mecánica comunica emoción?

Si sí a todo, procede.

Si no... piensa más.

---

**Escrito con cuidado, para un juego real sobre relaciones reales.**

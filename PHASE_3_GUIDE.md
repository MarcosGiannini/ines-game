# Phase 3: Jump Depth - Guía De Testing

## Qué Es Phase 3

**Phase 3** es sobre **profundizar la mecánica de saltos** sin añadir nuevas mecánicas.

No es sobre "saltar más alto" o "doble salto". Es sobre hacer que los saltos **se sientan justos, intencionales y confortables de controlar**.

---

## Qué Cambió En Phase 3

Los **parámetros de timing del salto** han sido mejorados para hacer el salto más perdonador y responsive.

Esto está en: `scripts/player/player_jump.gd`

| Parámetro | Antes | Ahora | Efecto |
|-----------|-------|-------|--------|
| `coyote_time` | 0.11s | 0.15s | +36% → Más tiempo para "perdonar" fallos |
| `jump_buffer_time` | 0.12s | 0.16s | +33% → Presionar antes es más responsive |
| `chain_window` | 0.24s | 0.30s | +25% → Cadenas más claras |

**Resumen:** Saltos más generosos (menos frustración), buffer más holgado (más responsive), cadenas más intencionales.

---

## Términos Básicos (Repaso)

- **Coyote Time:** Tiempo después de caer donde aún puedes saltar sin estar tocando el suelo. "Perdona" errores.
- **Jump Buffer:** Presionas saltar ANTES de aterrizar, se guarda y salta automática cuando tocas suelo.
- **Chain Jump:** Saltar varias veces seguidas (saltando en el aire).

---

## Primer Contacto

Cuando abras el juego:

1. Ines se mueve sola (igual que Phase 2, es normal)
2. El enemigo gris sigue siendo placeholder
3. Las plataformas verdes siguen siendo igual
4. ✅ Todo debería verse igual, pero **los saltos se sienten diferentes**

---

## Testing Sistemático: 5 Pruebas

**Haz cada prueba VARIAS veces**, slowly, y nota cómo se siente.

### Prueba 1: Salto Básico (¿Confiable?)

**Qué hacer:**
1. Acércate a una plataforma.
2. Presiona `Espacio` para saltar.
3. Repite 5-6 veces desde diferentes posiciones.

**Qué buscar:**
- ✅ ¿El salto se activa siempre?
- ✅ ¿La altura del salto es consistente?
- ✅ ¿Se siente energético?

**Feedback esperado:**
- "Saltos confiables" ✅
- "Salto se siente débil" ❌

---

### Prueba 2: Coyote Time (¿Perdona Errores?)

**Qué hacer:**
1. Corre a una plataforma.
2. **Cae** (no saltes, solo cae).
3. **DESPUÉS de caer, presiona `Espacio` APENAS toquas el suelo**.
4. Notarás que salt aunque no estuvieras en el aire aún.
5. Repite 5-6 veces corriendo desde diferentes ángulos.

**Qué buscar:**
- ✅ ¿Tienes un pequeño "margen de error"?
- ✅ ¿Puedes saltar aunque caigas?
- ❌ ¿O se siente igual de apretado que antes?

**Feedback esperado:**
- "Tengo tiempo para reaccionar" ✅
- "Se siente generoso" ✅
- "Sigue siendo apretado" ❌

---

### Prueba 3: Jump Buffer (¿Responsive?)

**Qué hacer:**
1. Corre hacia una plataforma.
2. **ANTES de tocar el suelo, presiona `Espacio`** (mientras aún estás en el aire).
3. Cuando toques el suelo, deberías saltar automáticamente.
4. Repite 5-6 veces con diferentes timing.

**Qué buscar:**
- ✅ ¿Puedes presionar saltar ANTES de aterrizar?
- ✅ ¿El juego recuerda tu input?
- ✅ ¿Se siente responsive?

**Feedback esperado:**
- "Puedo presionar antes, funciona" ✅
- "Se siente más responsive" ✅
- "Sigue siendo difícil" ❌

---

### Prueba 4: Cadenas De Saltos (¿Intencionales?)

**Qué hacer:**
1. Salta desde el suelo (`Espacio`).
2. **Mientras estás en el aire, presiona `Espacio` de nuevo** para saltar en el aire.
3. Intenta hacer 2-3 saltos seguidos.
4. Repite varias veces, en diferentes momentos.

**Qué buscar:**
- ✅ ¿Puedes saltar varias veces seguidas?
- ✅ ¿Siento que PUEDO controlar cuándo saltar?
- ✅ ¿Las cadenas se sienten limpias?

**Feedback esperado:**
- "Las cadenas se sienten controlables" ✅
- "Se siente más claro cuándo puedo saltar" ✅
- "Confuso cuándo puedo encadenar" ❌

---

### Prueba 5: Saltos + Movimiento (¿Fluido?)

**Qué hacer:**
1. Corre a un lado (`D`).
2. Salta (`Espacio`).
3. **En el aire, cambia dirección (`A`)**
4. Cae.
5. Repite con diferentes combinaciones.

**Qué buscar:**
- ✅ ¿Saltando no pierdo control horizontal?
- ✅ ¿Puedo cambiar dirección en el aire?
- ✅ ¿O el salto "congela" mi movimiento?

**Feedback esperado:**
- "Control fluido en el aire" ✅
- "Saltos no interrumpen movimiento" ✅
- "Pierdo control en el aire" ❌

---

## Qué Debes Notar Después De Las 5 Pruebas

Después de 15-20 minutos de jugar, piensa:

- 🎮 **Justicia:** ¿Los fallos se sienten justos o frustrant?
- 🎮 **Responsividad:** ¿El juego responde cuando presiono saltar?
- 🎮 **Claridad:** ¿Entiendo cuándo puedo saltar en cadena?
- 🎮 **Fluidez:** ¿Todo junto (movimiento + salto) se siente natural?

---

## Qué NO Debe Pasar

❌ **Errores Técnicos:**
- Saltos no se activan nunca
- Ines se queda flotando
- Cadenas infinitas de saltos (exploits)
- Crashes o comportamientos raros

❌ **Cambios Inesperados:**
- Movimiento horizontal debe seguir siendo rápido (Phase 2)
- NO debe haber doble salto, dash, o nuevas mecánicas
- Enemigo debe seguir siendo placeholder
- Pantalla NO debe crecer, solo la de prueba

❌ **Sensación Equivocada:**
- Saltos NO deben sentirse débiles o muertos
- Saltos NO deben sentirse imposibles de controlar
- Cadenas NO deben ser confusas

---

## Después De Testear

Cierra el juego y **dile a la IA UNA de estas frases:**

### Si Se Siente BIEN:
- "Saltos se sienten justos."
- "Cadenas se sienten intencionales."
- "Puedo saltarcómodamente."
- "Me gusta el cambio."

### Si Se Siente MAL en Algo:
- "Todavía es apretado el coyote." (necesita más tiempo)
- "El buffer no funciona, sigue igual." (necesita más margen)
- "Las cadenas son confusas." (necesita ventana más amplia)
- "Salts se sienten débiles." (necesita más velocidad)
- "Hay un error: [describe]"

### Si Hay REGRESIÓN (se rompió algo):
- "El movimiento se siente lento." (regresión de Phase 2)
- "Los giros no funcionan igual." (regresión de Phase 2)
- "Hay un crash: [describe]" (error técnico)

**La IA usará tu feedback para iterar o confirmar Phase 3.**

---

## Notas Sobre Los Cambios

| Parámetro | Por Qué Cambió | Significado |
|-----------|----------------|------------|
| Coyote +36% | Más tolerancia con errores | Puedes "perdonar" fallos |
| Buffer +33% | Más anticipación permitida | Presionar antes funciona |
| Chain +25% | Ventana visual más amplia | Saltar en cadena es más limpio |

**NO cambiamos velocidades de salto.** Si en futuras iteraciones queremos más dramatismo, ajustamos eso después.

---

## Dudas O Problemas

Si algo no se entiende o hay error:

1. Lee esta guía de nuevo (a veces la respuesta está aquí)
2. Haz screenshot del error
3. Dile a la IA exactamente qué pasó

**La IA te ayudará a iterar.**

---

## Resumen Rápido

| Paso | Qué Hacer | Duración |
|------|-----------|----------|
| 1 | Descargar rama Phase 3 en local | 2 min |
| 2 | Abrir Godot y ejecutar juego | 3 min |
| 3 | Haz 5 pruebas de saltos | 15-20 min |
| 4 | Dile a IA qué sentiste | 1 min |

**Total: 20-25 minutos, sin programación necesaria.**

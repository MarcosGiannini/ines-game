# Guía Para Probar Ines Game En Tu PC Personal

**Esta guía es para Marcos, en Windows, para Phase 2**.

Objetivo: Instalar Godot 4, descargar el proyecto `ines-game` y probar cómo se siente el movimiento de Ines.

**No necesitas saber programar. Es solo pasos mechánicos.**

---

## Qué Esperar

La guía tiene 8 pasos. Cada uno es independiente. Si algo no funciona, PARATE y dile a la IA, no continúes.

1. **Pasos 1-2:** Descargar e instalar Godot (programita que usamos para crear el juego)
2. **Pasos 3-5:** Conseguir el proyecto y abrirlo en Godot
3. **Pasos 6-8:** Ejecutar el juego y probar cómo se mueve Ines

**Duración:** 30-45 minutos (depende de tu internet).

---

## Términos Básicos (Léelos rápido)

- **Godot:** El programa que usamos para crear y probar el juego.
- **Proyecto:** La carpeta donde está guardado TODO del juego.
- **Escena:** Una "pantalla" o "zona" del juego. Aquí abriremos una escena de prueba.
- **Script:** Código que hace que las cosas se muevan (no necesitas leerlo).

## Paso 1: Instalar Godot En Windows

Windows es el sistema operativo que usamos.

1. Abre tu navegador de internet.
2. Entra en la web oficial de Godot:

```
https://godotengine.org/download/windows/
```

3. **Busca el botón para descargar Godot 4.**
   - Si ves varias opciones, elige la versión "normal" (no las especiales).
   - Descarga el archivo `.exe` o la versión ejecutable.

4. Cuando termine la descarga, haz doble clic en el archivo descargado.
5. Si Windows pregunta "¿Permitir que esta app haga cambios?" → **SÍ, permite.**
6. Godot se abrirá automaticamente. No necesita instalación complicada.

**Si Godot se abre:** ✅ Perfecto. Ciérralo y continúa al Paso 2.

**Si ves error o no se abre:** ❌ Para aquí. Haz screenshot del error y dile a la IA.

## Paso 2: Conseguir La Carpeta Del Proyecto En Tu PC

Necesitas descargar una carpeta llamada exactamente `ines-game`.

**Opción A: Fácil (SIN Git)**

Si no sabes usar Git, usa esta manera:

1. Abre tu navegador.
2. Entra en GitHub: <https://github.com/MarcosGiannini/ines-game>
   - (O pídele el enlace a la IA si no aparece)
3. Busca un botón verde que dice **`Code`**.
4. Haz clic. Se abrirá un menú pequeño.
5. Haz clic en **`Download ZIP`**.
6. Espera a que termine la descarga.
7. Encuentra el archivo `.zip` en tu PC (normalmente en Descargas).
8. Haz doble clic para extraer/descomprimir.
9. Verás una carpeta. Si tiene un nombre raro, **renómbrala exactamente a `ines-game`**.
10. Muévela a un lugar en tu PC donde la encuentres fácil (Escritorio, Documentos, etc).

**Opción B: Avanzada (CON Git)**

Si sabes usar Git:
1. Abre terminal.
2. `git clone https://github.com/MarcosGiannini/ines-game.git`
3. Entra: `cd ines-game`

**Verifica:** Tienes una carpeta `ines-game` con un archivo `project.godot` dentro. ✅

## Paso 3: Abrir El Proyecto En Godot

1. **Abre Godot** (si lo cerraste, vuelve a abrirlo).
2. En la pantalla inicial verás botones. Busca uno que diga **`Import`** o **`Importar`**.
3. Haz clic en **`Import`**.
4. Se abrirá un navegador de carpetas. **Busca tu carpeta `ines-game`.**
5. Dentro de esa carpeta, busca y selecciona el archivo **`project.godot`**.
6. Haz clic en **`Open`** o **`Abrir`**.
7. Si Godot pregunta algo, haz clic en **`Import & Edit`**.

Godot tardará 10-20 segundos en cargar el proyecto.

**Cuando termine:**
- Verás a la izquierda una estructura de carpetas (project explorer).
- Verás en el centro la escena.
- ✅ El proyecto está abierto.

**Si ves errores:** ❌ Para aquí. Copia el mensaje de error y dile a la IA.

## Paso 4: Abrir La Pantalla De Prueba

1. Mira a la **izquierda** de la pantalla. Verás carpetas y archivos.
2. Abre la carpeta que dice **`scenes`** (haciendo doble clic).
3. Dentro, abre la carpeta que dice **`test`**.
4. Verás un archivo que dice **`MovementTestRoom.tscn`**.
5. Haz **doble clic** en ese archivo para abrirlo.

Godot cargará la escena (tarda 3-5 segundos).

**Cuando termine:**
- Verás en el centro la pantalla de prueba.
- Verás un personaje (Ines, la niña) en la parte inferior izquierda.
- Verás una forma rara gris (el enemigo de prueba).
- ✅ La escena está abierta y lista.

## Paso 5: Ejecutar La Pantalla De Prueba (El Juego)

1. Mira la **parte superior** de Godot.
2. Busca un botón que parece un **triángulo de reproducir** (▶).
3. Haz clic en ese botón. También puedes pulsar **F6** en el teclado.

Godot abrirá una **ventana nueva** con el juego.

**Cuando se abra:**
- Verás a Ines (personaje pequeño) en la pantalla.
- Verás plataformas verdes donde está Ines.
- ✅ El juego está corriendo.

## Paso 6: Controles

Usa estas teclas en el juego:

| Acción | Tecla 1 | Tecla 2 | Tecla 3 |
|--------|---------|---------|---------|
| Mover izquierda | `A` | Flecha ← | |
| Mover derecha | `D` | Flecha → | |
| Saltar | `Espacio` | `W` | Flecha ↑ |

**Ejemplo:**
- Pulsa `A` para que Ines vaya a la izquierda.
- Pulsa `D` para que Ines vaya a la derecha.
- Pulsa `Espacio` para que Ines salte.

## Paso 7: Qué Hacer (Pruebas Básicas)

**NO buscas ganar ni resolver nada. Solo quieres SENTIR cómo se mueve Ines.**

Prueba esto varias veces cada uno:

1. **Movimiento básico:** Pulsa `A` para ir izquierda, luego `D` para ir derecha.
2. **Aceleración:** Mantén presionado `D` durante 2 segundos sin soltar. ¿Se siente rápida?
3. **Giros rápidos:** Corre a la izquierda (`A`), luego de repente pulsa `D`. ¿Gira suave?
4. **Flow:** Corre hacia un lado, suelta la tecla y mira qué pasa. ¿Ines sigue moviéndose un poco?
5. **Saltos:** Pulsa `Espacio` varias veces. ¿Saltos se sienten fáciles de controlar?

**Hazlo unas 5-10 veces cada prueba. Es solo para familiarizarte.**

## Paso 8: Qué Debes Notar En Phase 2 (Importante)

Después de probar, piensa en estas cosas. **Debes notar:**

- ✅ Ines se siente **rápida** desde el primer botón pulsado.
- ✅ Ines se siente **juguetona** cuando cambias de dirección (giros no lentos).
- ✅ Soltar las teclas mantiene un poco de **movimiento suave** (no se detiene drásticamente).
- ✅ Los **saltos se sienten respuestos** (no flojos).
- ✅ El **control en el aire es claro** (puedes moverte mientras saltas).

Si la mayoría de estos puntos se sienten bien, **Phase 2 está OK**.

### Qué NO Debe Pasar

- ❌ Ines **no debe sentirse lenta** o pesada.
- ❌ Ines **no debe sentirse robótica** o sin vida.
- ❌ Ines **no debe deslizarse sin control** sin que tú lo decidas.
- ❌ **No deben aparecer armas** (el juego es pacífico).
- ❌ **No deben aparecer daños** ni violencia.
- ❌ **No deben haber cambios** en el enemigo gris de prueba.
- ❌ **No debe ser una pantalla más grande** o un nivel completo.

---

## Paso 9: Cierra El Juego Y Dile A La IA

Cuando termines de probar:

1. Cierra la ventana del juego (la que abriste en Paso 5).
2. **Di a la IA frases simples,** como:
   - "Se siente rápida."
   - "Se siente lenta al empezar."
   - "Gira bien."
   - "Gira demasiado brusco."
   - "Se desliza demasiado."
   - "Me gusta como está."
   - "Hay un error: [describe lo que pasó]"

**Es suficiente.** La IA usará tu feedback para la siguiente iteración o para confirmar que Phase 2 está completo.

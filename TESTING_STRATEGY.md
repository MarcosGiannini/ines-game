# Estrategia De Pruebas

## Propósito

Este documento explica cómo comprobar Ines Game a medida que crece.

La prueba manual es obligatoria en cada fase porque la sensación de movimiento, el ritmo y el tono emocional no se pueden validar solo leyendo código.

## Principios De Prueba

- Probar una fase cada vez.
- Probar solo el alcance aprobado.
- Incluir siempre instrucciones de verificación manual.
- Comprobar siempre qué NO debe pasar.
- Tratar los problemas de sensación como errores reales.
- Preferir pantallas pequeñas de prueba antes de crear niveles completos.
- No considerar suficiente que "el juego se abre".

## Formato Obligatorio De Verificación

Cada implementación debe incluir un bloque en castellano y nivel principiante:

```text
MANUAL VERIFICACIÓN

Paso 1:
- Abre Godot.
  Godot es el programa que usamos para crear y probar el juego.

Paso 2:
- Abre el proyecto "ines-game".
  El proyecto es la carpeta donde está guardado todo el juego.

Paso 3:
- Abre la escena, documento o lugar exacto que se indique.
  Una escena es como una pantalla o zona del juego.

Paso 4:
- Ejecuta la prueba.
- Explica qué botón pulsar o qué tecla usar.

Paso 5:
- Haz las acciones de prueba indicadas.
- Por ejemplo: moverte, saltar, girar o soltar las teclas.

Qué debes notar:
- Describe el comportamiento esperado con palabras simples.
- Describe cómo debería sentirse el control o la interacción.

Qué NO debe pasar:
- Describe errores, bloqueos, cambios incorrectos o comportamientos fuera de la fase aprobada.
```

No asumir experiencia técnica. El objetivo es que Marcos pueda validar el proyecto sin escribir código.

## Pruebas De Movimiento

Usar:

```text
res://scenes/test/MovementTestRoom.tscn
```

Comprobar:

- Ines se mueve a izquierda y derecha.
- La aceleración se siente rápida y responsiva.
- Los cambios de dirección se sienten juguetones, no lentos.
- Ines no parece diseñada para quedarse quieta.
- El movimiento no depende del estado de enemigos.
- El movimiento no crea temblores visibles.
- El movimiento no rompe la colisión con el suelo.

Errores comunes de movimiento:

- Ines se desliza sin control.
- Ines se detiene demasiado brusco.
- Ines se mueve demasiado lento.
- Ines no puede cambiar de dirección claramente.
- Ines cae a través del suelo.
- Ines se queda atascada en geometría simple.
- El script del jugador absorbe lógica que no le corresponde.

## Pruebas De Salto

Usar:

```text
res://scenes/test/MovementTestRoom.tscn
```

Hasta que exista una pantalla dedicada de salto, esta pantalla de prueba es suficiente.

Comprobar:

- El salto desde el suelo funciona de forma fiable.
- La altura del salto se siente energética.
- El movimiento horizontal sigue siendo controlable mientras Ines salta.
- El ritmo del salto se siente justo.
- Los saltos encadenados, cuando se ajusten, se sienten claros.
- Los cambios de salto no hacen que el movimiento se sienta pesado.

Errores comunes de salto:

- El salto no funciona.
- El salto se activa varias veces sin querer.
- El salto se siente tarde.
- El salto corta demasiado el flow horizontal.
- El estado de salto se queda bloqueado.
- El ritmo de encadenar saltos no se entiende.

## Pruebas De Enemigos

Usar:

```text
res://scenes/test/MovementTestRoom.tscn
```

Hasta que exista una pantalla dedicada de enemigos, esta pantalla de prueba es suficiente.

Importante: en Phase 2, `EnemyBase` es solo un placeholder técnico de prueba. No representa el sistema final de enemigos.

Comprobar:

- El enemigo detecta al jugador si se toca.
- El enemigo se transforma cuando se toca con suficiente flow.
- El enemigo no usa lenguaje de violencia, daño ni destrucción.
- La respuesta visual del enemigo se mantiene suave y segura.
- El comportamiento del enemigo no controla el movimiento del jugador.

Errores comunes de enemigos:

- El enemigo nunca se transforma.
- El enemigo se transforma sin interacción clara del jugador.
- El enemigo desaparece de una forma que parece destrucción.
- El código del enemigo depende demasiado de detalles internos del jugador.
- La interacción con el enemigo rompe el movimiento.

## Pruebas De Regresión

Una regresión es algo que antes funcionaba y ahora se ha roto.

Antes de cerrar una fase:

- Ejecutar la pantalla principal de prueba.
- Confirmar que el movimiento del jugador sigue funcionando.
- Confirmar que el salto sigue funcionando.
- Confirmar la transformación del enemigo solo si se tocó código de enemigos.
- Confirmar que no se añadió una función de una fase futura por accidente.
- Confirmar que la documentación coincide con el comportamiento real.

## Pruebas De Documentación

Para fases solo de documentación:

- Leer los documentos creados o modificados.
- Confirmar que las responsabilidades se entienden.
- Confirmar que ningún documento contradice `AI_MASTER_CONTEXT.md`.
- Confirmar que `ROADMAP.md` sigue centrado en fases, objetivos, entregables, validación, estado y resúmenes.
- Confirmar que las reglas de proceso siguen en `AI_WORKFLOW.md`.

## Objetivo Manual Actual

Pantalla de prueba por defecto:

```text
res://scenes/test/MovementTestRoom.tscn
```

Controles por defecto:

- Mover izquierda: `A` o flecha izquierda
- Mover derecha: `D` o flecha derecha
- Saltar: `Espacio`, `W` o flecha arriba

## Plantilla Base Reutilizable

Desde el 2026-05-14 se adopta una regla permanente sobre testing manual:

- La plantilla base oficial de testing manual es `phase5-test.md` (mantenida en el repo padre / AI CORE).
- Cada test manual de cualquier fase futura debe **reutilizar esa plantilla** y adaptarla a la fase concreta.
- No se deben crear guías de testing nuevas desde cero salvo petición explícita de Marcos.
- La estructura mínima a mantener en cada adaptación incluye: objetivo, preparación, controles, checklist por bloques, qué debe pasar / qué NO debe pasar, plantilla de feedback e interpretación.
- Una fase **no se considera validada** hasta que exista una entrada de feedback humano en `GAME_FEEL_LOG.md`. "Implementada" y "validada" son estados distintos.
- El nivel de la guía debe seguir siendo beginner-friendly: Marcos no escribe código, la guía debe poder seguirla cualquier persona con Godot instalado.

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

### 2026-05-06 - Phase 2 - Movement Polish Iteration 1

Cambio:
- Se aumentó la aceleración en suelo de `2800.0` a `3600.0`.
- Se aumentó la aceleración en aire de `1900.0` a `2400.0`.
- Se aumentó la velocidad máxima de `430.0` a `460.0`.
- Se redujo la velocidad mínima de flow de `130.0` a `95.0`.
- Se aumentó el empuje de giro de `1.2` a `1.45`.

Sensación observada:
- Pendiente de prueba manual en Godot.

Qué funciona:
- La intención es que Ines arranque más rápido, gire con más fuerza y tenga menos deslizamiento artificial al soltar las teclas.

Qué no funciona:
- Aún no se sabe hasta probarlo manualmente.

Próxima nota:
- Marcos debe probar si el movimiento se siente más rápido y juguetón sin sentir que el juego mueve a Ines por su cuenta.

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

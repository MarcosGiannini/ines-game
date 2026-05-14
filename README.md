# Ines Game

Ines Game es un juego de plataformas 2D rápido y fluido hecho con Godot.

Godot es el programa que usamos para crear y probar el juego.

El juego trata sobre movimiento, imaginación, valentía y transformar el miedo en algo amable. Está inspirado en una niña muy activa cuya personalidad se expresa con movimiento constante, saltos juguetones y ritmo imparable.

## Si Quieres Probar El Juego En Tu PC Personal

Empieza aquí:

[GUIA_PC_PERSONAL.md](GUIA_PC_PERSONAL.md)

Esa guía explica paso a paso cómo instalar Godot en Windows, abrir el proyecto `ines-game` y probar la pantalla de movimiento.

No necesitas saber programar para seguirla.

## Idea Central

El ciclo principal del juego es:

```text
MOVE -> JUMP -> CHAIN -> FLOW
```

Esto significa:

- moverse;
- saltar;
- encadenar acciones;
- sentir flow.

Flow significa que Ines mantiene energía y ritmo, pero sin quitar control al jugador.

## Visión

Este proyecto debe crecer como un juego comercial de alta calidad, potencialmente publicable en Steam o plataformas similares.

No se trata como un prototipo desechable. El desarrollo debe priorizar:

- buena sensación de movimiento;
- arquitectura limpia;
- sistemas de gameplay modulares;
- tono mágico y seguro;
- transformación de enemigos sin violencia;
- mantenimiento a largo plazo.

## Dirección Estratégica Actual (Provisional)

Desde el 2026-05-14, el proyecto adopta **Ruta A — Indie Emocional Corto** como dirección provisional:

- un solo mundo;
- 4 a 6 áreas;
- 30 a 60 minutos de experiencia total;
- padre limitado a 2 capas iniciales (luz de horizonte + eco de salto);
- sin expansión grande hasta tener vertical slice validado;
- Steam fuera del vocabulario operativo de momento.

Esta dirección es **provisional** hasta que Phase 5 sea testeada manualmente. La continuidad oficial: no reset, continuar con la base actual. Más detalle en [ROADMAP.md](ROADMAP.md) y [AI_MASTER_CONTEXT.md](AI_MASTER_CONTEXT.md).

## Estado Actual

El proyecto contiene ahora:

- un archivo de proyecto de Godot 4;
- una escena mínima de la jugadora;
- scripts separados para movimiento y salto;
- un placeholder técnico de enemigo;
- una pantalla mínima de prueba de movimiento;
- documentación de control del proyecto.

## Cómo Probar Rápido

Si ya tienes Godot abierto:

1. Abre el proyecto `ines-game`.
2. Abre la escena:

```text
res://scenes/test/MovementTestRoom.tscn
```

3. Pulsa `Play Scene` o la tecla `F6`.

La escena principal de prueba es:

```text
res://scenes/test/MovementTestRoom.tscn
```

Controles:

- Mover izquierda: `A` o flecha izquierda
- Mover derecha: `D` o flecha derecha
- Saltar: `Espacio`, `W` o flecha arriba

Para instrucciones detalladas desde cero, usa [GUIA_PC_PERSONAL.md](GUIA_PC_PERSONAL.md).

## Trabajar Con IA

El trabajo de IA en este proyecto debe seguir estos documentos:

- [AI_MASTER_CONTEXT.md](AI_MASTER_CONTEXT.md)
- [AI_WORKFLOW.md](AI_WORKFLOW.md)
- [REHYDRATION_PROTOCOL.md](REHYDRATION_PROTOCOL.md)
- [ROADMAP.md](ROADMAP.md)

Reglas importantes:

- Trabajar una fase cada vez.
- No saltar a fases futuras.
- No añadir gameplay fuera de la fase aprobada.
- Mantener los scripts en inglés.
- Mantener los sistemas modulares.
- Explicar los cambios claramente para Marcos, en castellano y nivel principiante.
- Cada cambio futuro debe incluir pasos de verificación manual en castellano.

Antes de que una nueva sesión de IA actúe, debe seguir el protocolo de rehidratación y esperar confirmación.

## Roadmap

Consulta [ROADMAP.md](ROADMAP.md) para ver las fases controladas de desarrollo.

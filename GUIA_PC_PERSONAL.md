# Guía Para Probar Ines Game En Tu PC Personal

Esta guía es para Marcos del futuro.

Objetivo: instalar Godot en Windows, abrir el proyecto `ines-game` y probar la pantalla de movimiento de Ines paso a paso.

No necesitas saber programar para seguir esta guía.

## Antes De Empezar

Godot es el programa que usamos para crear y probar el juego.

Un proyecto es la carpeta donde está guardado todo el juego.

Una escena es como una pantalla o zona del juego. En este caso vamos a abrir una pantalla de prueba llamada `MovementTestRoom.tscn`.

## Paso 1: Instalar Godot En Windows

1. Abre tu navegador de internet.
2. Entra en la web oficial:

```text
https://godotengine.org/download/windows/
```

3. Descarga Godot 4.
4. Si ves varias opciones, elige la versión normal de Godot 4 para Windows.
5. Cuando termine la descarga, abre el archivo descargado.
6. Si Windows pregunta si quieres permitir abrir la aplicación, acepta.

Godot no suele necesitar instalación complicada. Normalmente se abre directamente.

Si no consigues abrir Godot, para aquí y díselo a la IA antes de continuar.

## Paso 2: Conseguir La Carpeta Del Proyecto

Necesitas tener en tu PC una carpeta llamada `ines-game`.

Opción fácil si usas GitHub desde el navegador:

1. Abre la página del proyecto en GitHub.
2. Pulsa el botón verde `Code`.
3. Pulsa `Download ZIP`.
4. Cuando termine la descarga, descomprime el archivo ZIP.
5. Busca la carpeta descomprimida del proyecto.
6. Si la carpeta tiene otro nombre parecido, puedes renombrarla a `ines-game`.

Opción si ya sabes usar Git:

1. Abre una terminal.
2. Clona el repositorio del proyecto.
3. Entra en la carpeta `ines-game`.

Git es una herramienta para guardar y traer versiones del proyecto. Si no sabes usar Git, usa la opción fácil del ZIP.

## Paso 3: Abrir El Proyecto En Godot

1. Abre Godot.
2. En la primera pantalla, busca un botón llamado `Import`.
3. Pulsa `Import`.
4. Busca la carpeta `ines-game` en tu PC.
5. Dentro de esa carpeta, selecciona el archivo:

```text
project.godot
```

6. Pulsa `Open` o `Abrir`.
7. Pulsa `Import & Edit` si Godot lo muestra.

Ahora Godot debería abrir el proyecto.

Si Godot muestra un error, no sigas. Copia el mensaje o haz una captura y pásasela a la IA.

## Paso 4: Abrir La Pantalla De Prueba

1. Dentro de Godot, busca la lista de archivos del proyecto.
2. Abre la carpeta:

```text
scenes
```

3. Abre la carpeta:

```text
test
```

4. Haz doble clic en este archivo:

```text
MovementTestRoom.tscn
```

Esta es la pantalla de prueba del movimiento.

## Paso 5: Ejecutar Solo Esta Pantalla

1. Mira la parte superior de Godot.
2. Pulsa el botón `Play Scene`.
3. El icono parece un triángulo de reproducir.
4. También puedes pulsar la tecla `F6`.

Godot abrirá una ventana nueva con el juego.

Si Godot pregunta qué escena quieres ejecutar, elige la escena actual.

## Paso 6: Controles

Usa estas teclas:

- `A`: moverse a la izquierda
- Flecha izquierda: moverse a la izquierda
- `D`: moverse a la derecha
- Flecha derecha: moverse a la derecha
- `Espacio`: saltar
- `W`: saltar
- Flecha arriba: saltar

## Paso 7: Qué Probar

Prueba esto varias veces:

1. Pulsa izquierda y derecha.
2. Cambia rápido de dirección.
3. Muévete y luego suelta las teclas.
4. Salta quieto.
5. Salta mientras te mueves.
6. Corre hacia un lado, gira, y vuelve al otro lado.

No busques ganar ni completar un nivel. Esta pantalla solo sirve para sentir cómo se mueve Ines.

## Paso 8: Qué Debes Notar En Phase 2

Ines debería sentirse:

- rápida desde el primer toque;
- fácil de controlar;
- juguetona al girar;
- con un poco de flow al soltar las teclas;
- más divertida de mover que antes.

Flow significa que el movimiento sigue teniendo energía, como si Ines quisiera seguir jugando, pero sin que el juego te quite el control.

## Qué NO Debe Pasar

- Ines no debe sentirse lenta.
- Ines no debe sentirse pesada.
- Ines no debe sentirse robótica.
- Ines no debe deslizarse demasiado sin que tú quieras.
- No deben aparecer armas.
- No debe aparecer daño.
- No deben aparecer cambios nuevos en enemigos.
- No debe aparecer una pantalla más grande o un nivel completo.

`EnemyBase` debe seguir siendo solo un objeto técnico de prueba.

## Qué Decirle A La IA Después De Probar

Cuando termines, dile a la IA frases simples como:

- "Se siente demasiado rápida."
- "Se siente lenta al empezar."
- "Gira bien."
- "Gira demasiado brusco."
- "Se desliza demasiado al soltar."
- "Quiero más control en el aire."
- "Me gusta como está."

Con eso la IA podrá hacer la siguiente iteración de Phase 2.

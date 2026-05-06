# VISIÓN DEL JUEGO — INÉS

> Documento de referencia canónico. Fuente de verdad del proyecto.
> Versión: 1.0 | Idioma: Español

---

## 1. IDENTIDAD DEL PROYECTO

**Título de trabajo:** Inés  
**Género:** Plataformas 2D — Rítmico — Basado en movimiento  
**Motor:** Godot 4  
**Lenguaje:** GDScript  
**Audiencia:** Niños (4–10 años) y adultos que quieran reconectar con la infancia  

---

## 2. CONCEPTO CENTRAL

Inés es un juego sobre **movimiento**, **velocidad** y **imaginación**.

La jugadora controla a Inés, una niña de 6 años que nunca se detiene. Su forma de estar en el mundo es moverse: saltar, girar, correr, rebotar. A través del movimiento, Inés transforma el entorno, supera miedos y crea magia.

**El jugador no debe detenerse.**

El juego premia el flujo continuo. Pararse se siente antinatural. El ritmo es la mecánica. El movimiento es el poder.

### Bucle de juego central

```
MOVERSE → SALTAR → ENCADENAR → FLUIR
```

Cada acción alimenta la siguiente. La inercia es una recompensa. La pausa es una penalización implícita.

---

## 3. PERSONAJE — INÉS

### Descripción

- **Edad:** 6 años
- **Personalidad:** Enérgica, alegre, ligeramente terca, sigue su propio ritmo
- **Motivación interna:** Moverse porque sí. El movimiento es su lenguaje.

### Apariencia visual

- Coleta lateral / moño con goma rosa
- Pelo rosa (tonos vibrantes, no pastel)
- Conjunto rosa (falda o mono, ropa cómoda de movimiento)
- Descalza — contacto directo con el mundo

### Comportamiento en juego

- Salta de forma constante, incluso en reposo
- Gira sobre sí misma al cambiar de dirección
- Expresiva: su cuerpo comunica emoción en cada frame
- Animaciones fluidas y con peso propio

---

## 4. PODERES E IMAGINACIÓN

Los poderes de Inés nacen del movimiento. No son armas. Son expresiones de energía.

### Principios

- **No hay violencia.** No hay armas, destrucción ni daño explícito.
- **La imaginación es el poder.** Inés transforma, no destruye.
- **El movimiento es la fuente.** Los poderes se activan con acción, nunca en reposo.

### Poderes por mecánica de movimiento

| Mecánica | Efecto |
|---|---|
| **Salto sobre enemigo** | Transforma al enemigo (se convierte en algo inofensivo o alegre) |
| **Aterrizaje con energía** | Libera una onda de impacto que despeja el área |
| **Giro en el aire** | Deflecta proyectiles o ilumina zonas oscuras |
| **Carrera continua** | Genera una estela que transforma el suelo temporalmente |

### Lo que NO existe en este juego

- Armas de ningún tipo
- Violencia directa o gráfica
- Destrucción de entornos
- Mecánicas de daño estándar

---

## 5. ENEMIGOS

Los enemigos de Inés representan **el miedo**. No son monstruos. Son miedos con forma.

### Principios de diseño

- **Formas oscuras pero suaves** — Sin aristas duras ni diseños agresivos
- **Lindos, no grotescos** — Inquietantes de forma sutil, jamás aterradores
- **Se transforman al ser derrotados** — No desaparecen ni explotan; cambian de estado

### Comportamiento esperado

- Se mueven de forma lenta o errática
- Reaccionan a la presencia de Inés (se asustan, se acercan con timidez)
- Al ser tocados por el poder de Inés, mutan: se vuelven coloridos, suaves, o comienzan a bailar

### Ejemplos conceptuales

- Una sombra que copia los movimientos de Inés pero con retraso
- Una nube oscura que llora y huye de la luz
- Un bulto informe que se encoge al recibir energía

---

## 6. MUNDO Y AMBIENTACIÓN

### Tono general

- **Mágico** — La realidad tiene una capa de imaginación visible
- **Amigable** — El mundo nunca es hostil por naturaleza
- **Seguro para niños** — Sin contenido perturbador
- **Enérgico** — Colores saturados, música con ritmo, entornos que "respiran"

### Estética visual

- 2D plano con profundidad por capas (parallax)
- Paleta vibrante: rosas, morados, amarillos cálidos, azules eléctricos
- Formas redondeadas en arquitectura y elementos
- Elementos animados en el fondo (plantas que se mueven, luces que pulsan)

### Influencias estéticas (SIN COPIAR)

- Energía pop de los 80s/90s
- Imaginación infantil libre
- Estética alien-juguetona (formas extrañas pero acogedoras)

### Lo que NO se debe referenciar directamente

- Disney / Pixar
- Stitch (Lilo & Stitch)
- Bluey
- Cualquier IP protegida

---

## 7. AUDIO Y MÚSICA

- Ritmo constante que acompaña el movimiento
- Efectos de sonido expresivos y caricaturescos
- Música adaptativa: sube de intensidad con el flujo del jugador
- Sin música tensa o perturbadora

---

## 8. EXPERIENCIA DEL JUGADOR

### Lo que debe sentir el jugador

1. **Alegría del movimiento** — Cada salto y aterrizaje debe sentirse bien
2. **Fluidez** — El juego no debe interrumpirse; el flujo debe mantenerse
3. **Seguridad** — El mundo es divertido, nunca amenazante
4. **Agencia** — El jugador siente que Inés responde perfectamente a sus inputs

### Métricas de diseño

- El jugador nunca debe estar más de 3 segundos sin moverse voluntariamente
- La cámara acompaña, nunca empuja
- Los fallos deben ser rápidos de recuperar (respawn inmediato, sin penalizaciones largas)

---

## 9. ESTADO ACTUAL DEL PROYECTO

- [x] Concepto definido
- [x] Visión documentada (ES)
- [x] Visión documentada (EN)
- [ ] Arquitectura técnica definida
- [ ] Roadmap establecido
- [ ] Prototipo jugable

---

## 10. NOTAS FINALES

Este documento es la **fuente de verdad** del proyecto.  
Ante cualquier duda de diseño, esta visión tiene prioridad sobre cualquier decisión técnica o de producción.

Ninguna feature debe implementarse si no está alineada con:
- El movimiento continuo como núcleo
- La transformación como mecánica de poder
- La seguridad emocional como tono

---

*Última actualización: Mayo 2026*  
*Autor: Marcos Giannini*

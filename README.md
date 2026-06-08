# beamer-studio

Repositorio personal para gestionar presentaciones LaTeX Beamer personalizadas, organizadas como un monorepo y preparadas para compilarse localmente en VSCode con LaTeX Workshop.

El entorno esperado es Windows con MiKTeX, VSCode y la extensión LaTeX Workshop. Codex debe preparar y editar archivos, pero no debe compilar, instalar paquetes ni ejecutar `latexmk`, `lualatex` o `pdflatex`.

## Organización

```text
beamer-studio/
├── common/            # Preámbulos, macros, bibliografía y assets compartidos
├── themes/jamcy/      # Tema visual personal para Beamer
├── templates/         # Plantillas reutilizables por tipo de presentación
├── presentations/     # Presentaciones reales del repositorio
└── .agent/skills/     # Skills locales para agentes
```

Cada deck real debe vivir dentro de `presentations/`. Las plantillas de `templates/` sirven como punto de partida y no deberían convertirse en presentaciones finales.

## Crear una nueva presentación

1. Revisa `templates/` y elige la plantilla más cercana al caso de uso.
2. Crea una carpeta nueva en `presentations/`, por ejemplo `presentations/2026-06-mi-tema/`.
3. Copia el `main.tex` de la plantilla elegida.
4. Crea carpetas `sections/`, `figures/`, `tables/` y `output/` si la presentación las necesita.
5. Mantén las macros compartidas en `common/macros.tex` y el preámbulo común en `common/preamble.tex`.
6. Usa assets globales desde `common/assets/` cuando puedan reutilizarse en varios decks.

## Abrir y compilar en VSCode

Abre en VSCode el archivo `main.tex` del deck que quieres trabajar, por ejemplo:

```powershell
code presentations/example-deck/main.tex
```

La compilación debe realizarse desde VSCode mediante LaTeX Workshop, usando MiKTeX en Windows. La receta incluida usa `latexmk` con `lualatex` y rutas relativas.

Codex no debe ejecutar compilaciones ni instalar paquetes. Si falta un paquete LaTeX, MiKTeX/LaTeX Workshop debe gestionarlo según tu configuración local.

## Tema personal

El estilo visual central está en `themes/jamcy/`. Las presentaciones deben cargar el tema `jamcy` con rutas relativas desde su propio `main.tex`.

Modifica el tema global solo cuando el cambio de estilo deba aplicarse a múltiples decks. Para ajustes específicos de una presentación, prefiere comandos locales claros y mínimos.

## Recursos compartidos

`common/` contiene:

- `preamble.tex`: paquetes y configuración común para Beamer con `lualatex`.
- `macros.tex`: comandos matemáticos y macros reutilizables.
- `bibliography/`: espacio para referencias comunes.
- `assets/`: logos, iconos y fondos reutilizables.

No dupliques macros, preámbulos o assets si ya existe un lugar compartido razonable.

# AGENTS.md

Guía para Codex y otros agentes que trabajen en este repositorio.

## Estructura del proyecto

```text
beamer-studio/
├── README.md
├── AGENTS.md
├── .gitignore
├── .latexmkrc
├── .vscode/
│   └── settings.json
├── common/
│   ├── preamble.tex
│   ├── macros.tex
│   ├── bibliography/
│   │   └── README.md
│   └── assets/
│       ├── README.md
│       ├── logos/
│       │   └── README.md
│       ├── icons/
│       │   └── README.md
│       └── backgrounds/
│           └── README.md
├── themes/
│   └── jamcy/
│       ├── README.md
│       ├── beamerthemejamcy.sty
│       ├── beamercolorthemejamcy.sty
│       ├── beamerfontthemejamcy.sty
│       └── beamerinnerthemejamcy.sty
├── templates/
│   ├── README.md
│   ├── academic-talk/
│   │   ├── main.tex
│   │   └── README.md
│   ├── thesis-defense/
│   │   ├── main.tex
│   │   └── README.md
│   ├── technical-demo/
│   │   ├── main.tex
│   │   └── README.md
│   └── business-report/
│       ├── main.tex
│       └── README.md
├── presentations/
│   ├── README.md
│   └── example-deck/
│       ├── main.tex
│       ├── refs.bib
│       ├── sections/
│       │   ├── 01_intro.tex
│       │   ├── 02_content.tex
│       │   └── 03_closing.tex
│       ├── figures/
│       │   └── README.md
│       ├── tables/
│       │   └── README.md
│       └── output/
│           └── README.md
└── .agent/
    ├── README.md
    └── skills/
        ├── README.md
        ├── beamer-create-deck/
        │   └── SKILL.md
        ├── beamer-refactor-slides/
        │   └── SKILL.md
        ├── beamer-visual-style/
        │   └── SKILL.md
        └── beamer-latex-debug/
            └── SKILL.md
```

## Reglas para agentes

- El entorno local esperado es Windows + MiKTeX + VSCode + LaTeX Workshop.
- Codex no debe ejecutar compilaciones. No usar `latexmk`, `lualatex`, `pdflatex` ni comandos similares.
- Codex no debe instalar paquetes ni asumir TeX Live.
- Todas las rutas deben ser relativas; no introducir rutas absolutas.
- Las presentaciones reales van en `presentations/`.
- Antes de crear una presentación nueva, revisar `templates/` y partir de la plantilla más cercana.
- No duplicar macros si ya existen en `common/macros.tex`.
- No duplicar preámbulos si ya existe configuración compartida en `common/preamble.tex`.
- No modificar el tema global en `themes/jamcy/` sin una razón clara y aplicable a varios decks.
- Los outputs de compilación no se versionan. Los PDF y auxiliares deben quedar ignorados.
- Las skills del agente están en `.agent/skills/`.

## Estilo LaTeX

- Mantener cada deck modular con `main.tex` y archivos en `sections/`.
- Mantener una idea principal por frame cuando sea posible.
- Usar nombres de archivo descriptivos y ordenables, por ejemplo `01_intro.tex`.
- Preferir macros compartidas para notación repetida.
- Evitar paquetes innecesarios y configuraciones específicas de una máquina.
- Mantener comentarios breves que indiquen dónde editar contenido.
- No eliminar contenido técnico sin dejar claro el motivo.

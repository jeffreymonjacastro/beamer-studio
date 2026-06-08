# beamer-create-deck

Usa esta skill cuando debas crear una nueva presentación Beamer dentro de este repositorio.

## Flujo

1. Revisar `templates/` y elegir la plantilla más cercana.
2. Crear una carpeta en `presentations/YYYY-MM-topic/`.
3. Copiar el `main.tex` base desde la plantilla elegida.
4. Crear `sections/` para dividir el contenido del deck.
5. Mantener figuras específicas en `figures/`.
6. Mantener tablas específicas en `tables/`.
7. Crear `output/README.md` si se necesita una carpeta para salidas locales.

## Reglas

- No duplicar assets globales si pueden vivir en `common/assets/`.
- No duplicar macros si ya existen en `common/macros.tex`.
- Usar rutas relativas desde el `main.tex` del deck.
- No ejecutar compilación ni instalar paquetes.
- Mantener el deck preparado para VSCode + LaTeX Workshop + MiKTeX en Windows.

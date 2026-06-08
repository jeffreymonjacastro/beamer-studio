# beamer-latex-debug

Usa esta skill para depurar errores LaTeX reportados por VSCode o LaTeX Workshop.

## Flujo

1. Revisar el log generado por LaTeX Workshop.
2. Identificar si el problema es un paquete faltante, una ruta incorrecta, un error de sintaxis o bibliografía.
3. Corregir incrementalmente el archivo más cercano al error.
4. Mantener compatibilidad con `lualatex`, MiKTeX y Windows.
5. No eliminar contenido sin una razón clara.

## Reglas

- No ejecutar compilaciones desde Codex.
- No instalar paquetes.
- No asumir TeX Live ni rutas de Linux/macOS.
- Usar rutas relativas.
- Si falta un paquete, documentar el problema para que el usuario lo resuelva desde MiKTeX o LaTeX Workshop.

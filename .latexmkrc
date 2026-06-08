$pdf_mode = 4;
$out_dir = 'build';
$aux_dir = 'build';
$lualatex = 'lualatex -interaction=nonstopmode -synctex=1 %O %S';

# Keep this file simple for Windows + MiKTeX + LaTeX Workshop.
# No absolute paths, shell scripts, or external helper commands.

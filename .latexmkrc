# Latexmk configuration for "Scale, Symmetry, and the Renormalization Group"
# A Lie-Theoretic Unification

# Use pdflatex
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error %O %S';

# Bibtex
$bibtex_use = 2;

# More iterations to resolve references
$max_repeat = 5;

# Clean extensions
$clean_ext = 'bbl blg aux log out toc lof lot fls fdb_latexmk synctex.gz';

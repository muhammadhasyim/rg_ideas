# Building the RG Book

## Requirements

- TeX Live 2022 or later (full installation recommended)
- `latexmk` (included in TeX Live)
- The following LaTeX packages (included in TeX Live full):
  - `tufte-book` (document class)
  - `tcolorbox` (colored boxes)
  - `tikz`, `tikz-cd`, `pgfplots` (diagrams)
  - `amsmath`, `amssymb`, `amsthm` (mathematics)
  - `natbib` (citations)
  - `hyperref` (links)

## Quick Build

```bash
# Using the build script
./build.sh

# Or directly with latexmk
latexmk -pdf rg_book_main.tex
```

## Clean Build

```bash
# Remove auxiliary files
./build.sh clean

# Or with latexmk
latexmk -C rg_book_main.tex
```

## Manual Build (if latexmk unavailable)

```bash
pdflatex rg_book_main.tex
bibtex rg_book_main
pdflatex rg_book_main.tex
pdflatex rg_book_main.tex
```

## Notes

### Citation Style

This book uses the `tufte-book` class with margin-based citations. For citations 
inside `workedbox` environments (which use `tcolorbox`), use the `\boxcite{}` 
command instead of `\cite{}` to avoid parsing conflicts:

```latex
% Inside workedbox environments:
\textbf{Goal:} Some task~\boxcite{AuthorYear}.

% Elsewhere in the document:
\textbf{Goal:} Some task~\cite{AuthorYear}.
```

### Output

The build produces `rg_book_main.pdf` (~360 pages).

## Troubleshooting

- **Missing fonts**: Install the full TeX Live distribution
- **Undefined references**: Run `latexmk` again (it handles multiple passes)
- **Citation errors in boxes**: Use `\boxcite{}` instead of `\cite{}`


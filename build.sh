#!/bin/bash
#===============================================================================
# Build script for "Scale, Symmetry, and the Renormalization Group"
# A Lie-Theoretic Unification
#===============================================================================

set -e  # Exit on error

MAIN_FILE="rg_book_main"
BUILD_DIR="."

echo "=========================================="
echo "Building RG Book"
echo "=========================================="

cd "$(dirname "$0")"

# Clean auxiliary files if requested
if [[ "$1" == "clean" ]]; then
    echo "Cleaning auxiliary files..."
    latexmk -C "$MAIN_FILE.tex"
    rm -f "$MAIN_FILE.bbl" "$MAIN_FILE.blg"
    echo "Clean complete."
    exit 0
fi

# Full build with latexmk
echo "Running latexmk..."
latexmk -pdf "$MAIN_FILE.tex"

# Verify output
if [[ -f "$MAIN_FILE.pdf" ]]; then
    PAGE_COUNT=$(pdfinfo "$MAIN_FILE.pdf" 2>/dev/null | grep "Pages:" | awk '{print $2}' || echo "unknown")
    FILE_SIZE=$(ls -lh "$MAIN_FILE.pdf" | awk '{print $5}')
    echo ""
    echo "=========================================="
    echo "Build successful!"
    echo "Output: $MAIN_FILE.pdf"
    echo "Pages:  $PAGE_COUNT"
    echo "Size:   $FILE_SIZE"
    echo "=========================================="
else
    echo "ERROR: PDF not generated"
    exit 1
fi


#!/bin/bash

export max_print_line=1000
export error_line=254
export half_error_line=128

function once()
{
    pdflatex --interaction=nonstopmode --file-line-error --halt-on-error --shell-escape $@
}

bin/clean.sh || exit 1

cd docSource
once DocSpec.tex || exit 1

echo 'Success!'

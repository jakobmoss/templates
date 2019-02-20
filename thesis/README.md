# Template for a Thesis

Suitable for a Master's thesis. Contains all the possible parts one might desire
(remove those you don't need). See also *thesis-old* for an older version of
this template/preamble (with Danish as main language).

Compile with standard `pdflatex`, and `biber` for the bibliography.

Tip for nice compilation and auto-update of bibliography etc.:
```
latexmk -pvc thesis_master.tex
```

Change the `latexmkrc`-file if you need `shell-escape` for code-inclusion with
the `minted` package.

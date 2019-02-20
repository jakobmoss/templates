# Template for a BSc project

Suitable for a Bachelor's project (with strict 30 pages limit). It will
conserve space by removing black pages, place the abstract on the verso
of the front page, and start new chapters on any page.

Compile with standard `pdflatex`, and `biber` for the bibliography.

Tip for nice compilation and auto-update of bibliography etc.:
```
latexmk -pvc bsc_master.tex
```

Change the `latexmkrc`-file if you need `shell-escape` for code-inclusion with
the `minted` package.

# Template for a BSc project

Suitable for a Bachelor's project (with strict 30 pages limit). It will conserve
space by removing black pages, place the abstract on the verso of the front
page, and start new chapters on any page. Updated to conform to the limit of
2400 characters on a page (see below).

Compile with standard `pdflatex`, and `biber` for the bibliography.

Tip for nice compilation and auto-update of bibliography etc.:
```
latexmk -pvc bsc_master.tex
```

Change the `latexmkrc`-file if you need `shell-escape` for code-inclusion with
the `minted` package.


## Layout regulations
At least for students at the Department of Physics and Astronomy, Bachelor's
projects are limited to 30 pages with a maximum of 2400 characters (including
spaces) per page -- see
[Studieportalen](https://studerende.au.dk/studier/fagportaler/fysik/bachelorprojekt-speciale-og-andre-projekter/bachelorprojekt/)
and the [Official BSc
guide](https://studerende.au.dk/fileadmin/site_files/studier/Bachelorprojekt_Fysik_2017_Juli.pdf).

The following layout changes were made to adhere to this 2400-characters
standard (simple test with lorem ipsum yields 2395 on a page):
 - Font size 12
 - Added `\linspread{1.06}`
 - Changed to `\setlrmarginsandblock{3.7cm}{*}{1.5}`
 - Changed to `\setulmarginsandblock{*}{4.7cm}{1}`
 - Added `\setlength{\topskip}{1.6\topskip}` (which actually ought to be
   activated always to make `\sloppybottom` useful)

Note: The original layout was virtually identical to the one in **partA**. It is
also preserved in the branch `old-bsc-layout`.

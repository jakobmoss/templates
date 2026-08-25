# Template for a BSc project

Suitable for a Bachelor's project (with strict 30 pages limit). It will conserve
space by removing black pages, place the abstract on the verso of the front
page, and start new chapters on any page. Updated to conform to the limit of
2400 characters on a page (see below).

This version is updated in 2026 to allow for more content on the chapter pages (by moving the title towards the top of the page).b


## How to use

If you work on Overleaf, make a zip-file of the entire directory and upload as a new project. It might already have been provided to you as a zip-archive.

Then, compile with standard `pdflatex`, and `biber` for the bibliography.


## How to modify it for your project

Please modify the title, frontpage etc. to suit your project. Feel free to add yourself as an author in the comments/header in each individual file.

Note that the title is defined globally in the `bsc_main.tex`. Also look for these comments in the code for things (as a minimum) modify:

``` tex
% ** REMEMBER TO MODIFY THIS FOR YOUR PROJECT **
```

Another thing to change for your specific project is the style of the bibliography. Please ask your advisor about the required style for your branch of physics. Note that the sorting of the bibliography is also modified in the main file -- examples is provided there for a few different styles.



## Tips

Tip for nice compilation and auto-update of bibliography etc.:
```
latexmk -pvc bsc_main.tex
```



## Layout regulations

At least for students at the Department of Physics and Astronomy, Bachelor's
projects are limited to 30 pages with a maximum of 2400 characters (including
spaces) on a page with only text -- see
[Studieportalen](https://studerende.au.dk/studier/fagportaler/fysik/bachelorprojekt-speciale-og-andre-projekter/bachelorprojekt/)
and the [Official BSc
guide](https://studerende.au.dk/fileadmin/site_files/studier/Bachelorprojekt_Fysik_2017_Juli.pdf).

;; Normalt er skeleton-mode ikke just skruet sammen til at lave noget
;; så kompliceret som dette, men jeg er for doven til at lave en
;; egentlig makro. Deal with it.
(define-skeleton skeleton-latex-simple
  "Inserts a LaTeX base skeleton into current buffer.
This only makes sense for empty buffers."
  "Dummy string for implicit skeleton-read (variable str). Ignored"
  "\\documentclass[a4paper,"
  (setq latex-skeleton-class-options
	(skeleton-read "Document class options (besides a4paper): "
		       "oneside"))
  "]{memoir}\n"
  "\\usepackage[utf8]{inputenc}\n"
  "\\usepackage[T1]{fontenc}\n"

  (if (y-or-n-p "Load danish? ")
      (concat
       "\\usepackage[danish]{babel}\n"
       "\\renewcommand\\danishhyphenmins{22}\n")
    "\\usepackage[english]{babel}\n")	

  (if (y-or-n-p "Load math packages? ")
      (concat
       "\\usepackage{amsmath,amssymb}\n"
       "\\usepackage{mathtools}\n"))

  (if (y-or-n-p "Load Palatino fonts? ")
      (concat
       "\\usepackage["
       (if (y-or-n-p "Old style numerals? ") "osf" "sc")
       "]{mathpazo}\n"
       "\\linespread{1.06}\n"))
  "\\usepackage{microtype}\n"
  "\n"
  "% Fancy break med tre små stjerner, der signalerer et skifte, der ikke\n"
  "% er start nok til at skulle have egen opgavebetegnelse.\n"
  "\\usepackage{fourier-orns}\n"
  "\\newcommand{\\starbreak}{%\n"
  "\\fancybreak{\\starredbullet\\quad\\starredbullet\\quad\\starredbullet}}\n"
  "\n"
  "% Hvis kun der er en side i dokumentet, er der ingen grund til at vise\n"
  "% sidetallet. Derfor kan vi med lidt magi skjule det i netop det\n"
  "% tilfælde.\n"
  "\\AtEndDocument{\\ifnum\\value{page} = 1\\thispagestyle{empty}\\fi}\n"
  "\n"
  "\\begin{document}\n"
  
  "\\author{"
  (setq latex-skeleton-document-author
	(skeleton-read "Author: " (user-full-name)))
  "}\n"
  "\\title{" 
  (setq latex-skeleton-document-title
	(skeleton-read "Title: " nil))
  "}\n"
  "\\date{\\today}\n"
  "\\maketitle\n"
  "\n"
  _
  "\n\n\n"
  "\\end{document}\n")


(define-skeleton skeleton-latex-astro
  "Inserts a LaTeX base skeleton into current buffer.
This only makes sense for empty buffers."
  "Dummy string for implicit skeleton-read (variable str). Ignored"
  "\\documentclass[a4paper, "
  (setq latex-skeleton-class-options
	(skeleton-read "Document class options (besides a4paper): "
		       "oneside, 11pt, article, british"))
  "]{memoir}\n"
  "\n"
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n"
  "% Preamble\n"
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n"
  "% Standard preamble\n"
  "\\input{/Users/moss/templates/astrotex/preamble}\n"

  (if (y-or-n-p "Load BibLaTeX? ")
      (concat
       "\n"
       "% Bibliography\n"
       "\\input{/Users/moss/templates/astrotex/loadbib}\n"
       "\\addbibresource{"
       (setq latex-skeleton-bib-name
	     (skeleton-read "Name of bibliography file (without .bib): "
			    "bibliography"))
       ".bib}\n"))

  "\n"
  "% Information for maketitle\n"
  "\\author{"
  (setq latex-skeleton-document-author
	(skeleton-read "Author: " (user-full-name)))
  "}\n"
  "\\title{" 
  (setq latex-skeleton-document-title
	(skeleton-read "Title: " nil))
  "}\n"
  "\\date{\\today}\n"
  "\n\n"
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n"
  "% Content\n"
  "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n"
  "\n"
  "\\begin{document}\n"
  "\\maketitle\n"
  "\n\n"
  _
  "\n\n"
  (if (y-or-n-p "Insert BibLaTeX bibliography? ")
      (concat
       "%\n"
       "% Bibliography and such stuff\n"
       "%\n"
       "\\raggedyright[4em] \\printbibliography[heading=memoirbib])\n")
       (concat
       "%\n"
       "% Bibliography\n"
       "%\n"
       "\\begin{thebibliography}{9}\n"
       "\\bibitem{star} R. Kippenhahn, A. Weigert and A. Weiss: \\textsl{Stellar\n"
       "    Structure and Evolution}, Second Edition, Springer, 2012.\n"
       "\\end{thebibliography}\n"))
  "\n\n\n"
  "\\end{document}\n")


(provide 'skeleton-latex)
;;; skeleton-latex.el ends here

# Skabelon til Studieretningsprojekt (SRP)

Passende til SRP. Sproget er sat til dansk og skabelonen indeholder de mest
almindelige afsnit (husk at undersøge hvad dit gymnasium kræver). I modsætning
til de andre skabeloner er denne enkeltsidet -- der er altså ikke forskel på
højre- og venstresider. 

Køres med standard  `pdflatex`. Titl bibliografien anvendes `biber`.

Godt tip til at compile inklusiv automatisk opdatering af bibliografi:
```
latexmk -pvc bsc_master.tex
```

Husk at køre med `shell-escape`, hvis du bruger `minted`-pakken til at inkludere
kode. Hvis du bruger Overleaf burde den gøre det automatisk. Ellers skal det
ændres i `latexmkrc`-filen eller i din editor.


## Omfangskrav

Layoutet er justeret, så der er omkring 2400 tegn på en side der kun indeholder
tekst. Husk altid at undersøge om dit gymnasium har specielle krav til layout
og/eller omfang.

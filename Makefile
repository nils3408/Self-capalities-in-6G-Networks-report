
TARGET?=main

PDFTEXOPTS = -halt-on-error

default: build

clean:
	rm -f *.acn *.acr *.alg *.aux *.bbl *.blg *.dvi *.glg *.glo *.gls *.ist *.lof *.log *.lol *.lot *.out *.pdf *.toc *.pdfsync *.gz *.tdo
build: 
	pdflatex $(PDFTEXOPTS) -draftmode $(TARGET).tex
	bibtex $(TARGET).aux
	pdflatex $(PDFTEXOPTS) -draftmode $(TARGET).tex
	pdflatex $(PDFTEXOPTS) $(TARGET).tex
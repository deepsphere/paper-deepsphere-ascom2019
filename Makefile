PDFNAME = scnn.pdf rebuttal.pdf

all:	$(PDFNAME)

%.pdf: %.tex Makefile $(shell ls *.bib)
	pdflatex $*
	-bibtex $*
	pdflatex $*
	pdflatex $*

%.pdf: %.lyx Makefile $(shell ls *.bib)
	lyx -f --export pdf2 $<

%.tex: %.lyx Makefile $(shell ls *.bib)
	lyx -f --export latex $<

texclean:	
	-rm -f *.aux *.bbl *.blg *.log *.dvi *.out *.toc *.gz* *.fdb_latexmk *.spl

clean:	texclean
	-rm -f $(PDFNAME)

.PHONY: all texclean clean

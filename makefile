TEX = $(wildcard *.tex)
PDF = $(TEX:.tex=.pdf)
BBL = $(TEX:.tex=.bbl)  # processed bibliography
BIB = $(wildcard *.bib)  # bibliography
BST = $(wildcard *.bst)  # bibliographic style
STY = $(wildcard *.sty)  # style files / packages (loaded with usepackage)
DTX = $(wildcard *.dtx)  # source of STY and CLS (code, code doc, user doc)
CLS = $(wildcard *.cls) $(DTX:.dtx=.cls)  # classes (loaded with documentclass)

all: $(PDF)

%.pdf: %.tex $(BIB) $(STY) $(CLS) $(BST)
	latexmk -pdf $<

%.bbl: %.tex $(BIB) $(STY) $(CLS) $(BST)
	latexmk -pdf $<

%.cls: %.ins %.dtx
	pdflatex $<

clean:
	rm -f *.{aux,bbl,blg,fdb_latexmk,fls,log,out,lof,dvi}
	rm -f *.{bcf,run.xml}
	rm -f *.{toc,snm,nav}
	rm -f *.{cls,spl}
	rm -f *.gz*
	rm -f *.pdfpc

cleanall: clean
	rm -f $(PDF)
	rm -f arxiv.zip

arxiv.zip: $(TEX) $(BBL) $(STY) $(CLS)
	apack arxiv.zip $(TEX) $(BBL) $(STY) $(CLS) figures/*.{pdf,png,jpg}

.PHONY: all clean cleanall

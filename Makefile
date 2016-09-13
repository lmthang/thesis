all: thesis.pdf

clean:
	rm -f *~ *.bak *.bbl *.aux *.log *.dvi *.pdf *.ps *.blg *.out *.lof *.lot

thesis.pdf: thesis.ps
	ps2pdf thesis.ps thesis.pdf

thesis.ps: thesis.dvi
	dvips -t a4 -o thesis.ps thesis.dvi 

thesis.dvi: thesis.bib *.tex img/*.eps 
	-latex thesis.tex
	bibtex thesis
	latex thesis.tex
	latex thesis.tex

all: thesis.pdf

clean:
	rm -f *~ *.bak *.bbl *.aux *.log *.dvi *.ps *.blg *.out thesis.pdf

thesis.pdf: *.bib *.tex
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex

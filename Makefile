all: thesis.pdf

clean:
	rm -f *~ *.bak *.bbl *.aux *.log *.dvi *.ps *.blg *.out thesis.pdf

thesis.pdf: *.bib *.tex *.eps
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex

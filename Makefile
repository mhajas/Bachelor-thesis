all: thesis.pdf

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out *.nav *.toc *.snm *.run.xml *-blx.bib *.bbl *.blg *.bcf

thesis.pdf: thesis.tex chapter1.tex chapter2.tex chapter3.tex chapter4.tex chapter5.tex chapter6.tex
	pdflatex thesis

remake: thesis.bib
	pdflatex thesis
	biber thesis
	pdflatex thesis
	pdflatex thesis

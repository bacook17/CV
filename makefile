default: Cook_CV

clean:
	rm -f *.log *.aux *.bbl *.blg *.out *.pdf *~

Cook_CV:
	pdflatex Cook_CV
	pdflatex Cook_CV

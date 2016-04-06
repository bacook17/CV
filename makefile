default: Cook_CV

clean:
	rm -f *.log *.aux *.bbl *.blg *.out *.pdf *~

Cook_CV:
	command latexdriver Cook_CV.tex Cook_CV.pdf

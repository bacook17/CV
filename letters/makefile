clean:
	rm -f *.log *.aux *.bbl *.blg *.out *.pdf *~

letter_template: Cook_Letter_Template.pdf

%.pdf: %.tex
	command latexdriver $< $@

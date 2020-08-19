resumes = Cook_resume.pdf

default: $(resumes)

clean:
	rm -f *.log *.aux *.bbl *.blg *.out *.pdf *~

Cook_CV: Cook_CV.pdf

letter_template: Cook_Letter_Template.pdf

letter_fair: Cook_Letter_Fair.pdf

Cook_resume.pdf: Cook_resume_base.tex res.cls resume_setup.tex
	-command latexdriver Cook_resume_base.tex Cook_resume.pdf

%.pdf: %.tex res.cls resume_setup.tex
	command latexdriver $< $@

resumes = Cook_resume_2pg_physical.pdf Cook_resume_2pg.pdf Cook_resume_1pg_physical.pdf Cook_resume_1pg.pdf Cook_CV

default: $(resumes)

clean:
	rm -f *.log *.aux *.bbl *.blg *.out *.pdf *~

Cook_CV: Cook_CV.pdf

letter_template: Cook_Letter_Template.pdf

letter_fair: Cook_Letter_Fair.pdf

Cook_resume_2pg.pdf: Cook_resume_base.tex res.cls resume_setup.tex
	cp Cook_resume_base.tex Cook_resume_2pg.tex
	-command latexdriver Cook_resume_2pg.tex Cook_resume_2pg.pdf
	rm -f Cook_resume_2pg.tex

Cook_resume_1pg.pdf: Cook_resume_base.tex res.cls resume_setup.tex
	sed 's/resume_setup}/resume_setup}\\input{onepage_resume}/' Cook_resume_base.tex > Cook_resume_1pg.tex
	-command latexdriver Cook_resume_1pg.tex Cook_resume_1pg.pdf
	rm -f Cook_resume_1pg.tex

Cook_resume_2pg_physical.pdf: Cook_resume_base.tex res.cls resume_setup.tex
	sed 's/resume_setup}/resume_setup}\\input{physical_resume}/' Cook_resume_base.tex > Cook_resume_2pg_physical.tex
	-command latexdriver Cook_resume_2pg_physical.tex Cook_resume_2pg_physical.pdf
	rm -f Cook_resume_2pg_physical.tex

Cook_resume_1pg_physical.pdf: Cook_resume_base.tex res.cls resume_setup.tex
	sed 's/resume_setup}/resume_setup}\\input{physical_resume}\\input{onepage_resume}/' Cook_resume_base.tex > Cook_resume_1pg_physical.tex
	-command latexdriver Cook_resume_1pg_physical.tex Cook_resume_1pg_physical.pdf
	rm -f Cook_resume_1pg_physical.tex

%.pdf: %.tex res.cls resume_setup.tex
	command latexdriver $< $@

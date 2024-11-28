ROOT_DIR := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

report:
	docker run --rm -v "$(ROOT_DIR):/data" pandoc/extra --citeproc --bibliography biblio.bib "report.md" -o "report.pdf" --pdf-engine=xelatex -V geometry:a4paper --listings -H setup.tex

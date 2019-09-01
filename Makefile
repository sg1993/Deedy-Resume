.PHONY: examples

CC = xelatex
BB = bibtex
OPENFONTS_DIR = OpenFonts/
RESUME_SRCS = $(shell find $(OPENFONTS_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

resume.pdf: OpenFonts/resume.tex $(RESUME_SRCS)
	cd $(OPENFONTS_DIR) && $(CC) resume.tex && $(BB) resume && $(CC) resume.tex && $(CC) resume.tex

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
	rm -rf $(SHIBING__DIR)/*.pdf

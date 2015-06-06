TEX       = pdflatex
TEXFLAGS  = -shell-escape -file-line-error -halt-on-error
TEXMFHOME ="./texmf"
BIB       = bibtex
BIBFLAGS  = -terse
OUT       = manual.pdf

.PHONY: all clean

all: $(OUT)

clean:
	$(RM) *.aux *.bbl *.blg *.lof *.log *.lol *.lot *.out *.pdf *.synctex \
		*.toc *.thm *.pyg

%.pdf: %.tex
	TEXMFHOME=$(TEXMFHOME) $(TEX) $(TEXFLAGS) $<
	TEXMFHOME=$(TEXMFHOME) $(TEX) $(TEXFLAGS) $<

%.bbl %.blg: %.bib %.aux
	$(BIB) $(BIBFLAGS) $*

%.aux: %.tex
	$(TEX) $(TEXFLAGS) $<

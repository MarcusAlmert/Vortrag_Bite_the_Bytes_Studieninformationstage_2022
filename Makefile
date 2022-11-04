CC = pdflatex
OUT = out
BIB = biber
PAPER = main

$(PAPER):
	rm -rf *.aux *.log *.out *.bbl *.blg *.toc *.lol *.lof *.lot 
	$(CC) $@
	$(BIB) $@
	$(CC) $@
	$(CC) $@

fast:
	rm -rf *.aux *.log *.out *.bbl *.blg *.toc *.lol *.lof *.lot
	$(CC) $(PAPER)

clean:
	rm -rf *.aux *.log *.out *.bbl *.blg *.toc *.lol *.lof *.lot *.xml *.bcf *.snm *.nav

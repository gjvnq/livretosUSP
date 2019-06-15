all: gjvnq-livreto.pdf

%.pdf: %.tex *.cls
	-rm *.log *.out *.aux *.listing
	xelatex $<
	xelatex $<
	xelatex $<
	rm *.log *.out *.aux *.listing

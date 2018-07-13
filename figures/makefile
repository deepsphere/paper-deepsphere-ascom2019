SRC := $(filter-out %_crop.pdf, $(wildcard *.pdf))
FIG := $(patsubst %.pdf, %_crop.pdf, $(SRC))

crop: $(FIG)

%_crop.pdf: %.pdf
	pdfcrop $< $@
	mv $@ $<

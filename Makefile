# Build the CV PDF locally (same pipeline as CI).

OUTPUT := Vladimir_Burmistrov_CV.pdf
PANDOC := pandoc
PANDOC_FLAGS := --template=templates/CV.tex --pdf-engine=xelatex

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): CV.md templates/CV.tex
	$(PANDOC) CV.md $(PANDOC_FLAGS) -o $(OUTPUT)

clean:
	rm -f $(OUTPUT)

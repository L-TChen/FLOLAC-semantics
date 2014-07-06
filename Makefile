tex = pdflatex --output-dir=output

lectures   = lecture1 lecture3 lecture4 lecture5 

all: $(lectures)

$(lectures):
	$(tex) -jobname="$@_note" "\input{preambles/note}\input{preambles/basic}\input{$@}"
	$(tex) -jobname="$@_slide" "\input{preambles/slide}\input{preambles/basic}\input{$@}"
	mv output/$@_note.pdf output/$@_slide.pdf pdf

clean:
	rm output/*

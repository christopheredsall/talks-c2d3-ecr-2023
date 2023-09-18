IMAGE=registry.gitlab.developers.cam.ac.uk/rcs/rse/training/pandoc-ci
PANDOC=docker run --rm -it -v ${PWD}:${PWD} -w ${PWD}  $(IMAGE)

all: talk.pdf 

%.pdf: %.md
	$(PANDOC) --to=beamer --output=$@ $<

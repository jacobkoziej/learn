SKETCH ?=
PORT ?=

all:
ifndef SKETCH
	$(error make variable: [SKETCH] not defined)
endif
	arduino-cli compile --fqbn arduino:avr:uno ./$(SKETCH)

clean:
ifndef SKETCH
	$(error make variable: [SKETCH] not defined)
endif
	@rm -vrf ./$(SKETCH)/build

flash: all
ifndef PORT
	$(error make variable: [PORT] not defined)
endif
	arduino-cli upload -p $(PORT) --fqbn arduino:avr:uno $(SKETCH)

.PHONY: clean flash

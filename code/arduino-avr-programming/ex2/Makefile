PORT ?=

all:
	arduino-cli compile --fqbn arduino:avr:uno $(PWD)

clean:
	@rm -vrf $(PWD)/build

flash: all
ifndef PORT
	$(error make variable: [PORT] not defined)
endif
	arduino-cli upload -p $(PORT) --fqbn arduino:avr:uno $(PWD)

.PHONY: clean flash

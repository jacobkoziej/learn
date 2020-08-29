# Exercise 1: *The Hello World of Microcontrollers*

As per tradition, your first program in *any* programming language is Hello World.
Lucky for you, you'll be doing one better, blinking an LED!
Open your text editor and type out the following code **exactly**.

## The Code

### ex1.ino

```arduino linenums="1"
--8<--
code/arduino-avr-programming/ex1/ex1.ino
--8<--
```

### Compiling & Flashing

=== "Arduino IDE"

	Before you compile the program, you must first set the type of board you are using.
	Under `Tools` head to `Boards > Arduino AVR Boards` and select `Arduino Uno`.
	To compile the program either click the ![Arduino IDE Verify/Compile button](../../../assets/images/arduino-ide-compile-button.svg) or head to `Sketch` and select `Verify/Compile`.
	If there were no errors, you should see a message at the bottom console that reads `Done compiling.`
	If there were errors, make sure that you typed out the program **exactly** as above.

	Before you flash the compiled program, you must first set the communication port.
	Under `Tools` head to `Port` and select the option with `(Arduino Uno)`.
	To flash the compiled program either click the ![Arduino IDE Upload button](../../../assets/images/arduino-ide-upload-button.svg) or head to `Sketch` and select `Upload`.
	If there were no errors, you should see a message at the bottom console that reads `Done uploading.`
	If there were errors, make sure you have connected your Arduino correctly and selected the correct communication port.

# Exercise 1: *The Hello World of Microcontrollers*

As per tradition, your first program in *any* programming language is Hello World.
Lucky for you, you'll be doing one better, blinking an LED!

Before getting started, I recommend making a directory where you will store all your work to stay organized.
If you're using the Arduino IDE press ++ctrl+n++ to create a new sketch, followed by ++ctrl+shift+s++ and save the new sketch as `ex1`.
If you're using Arduino CLI, `#!bash cd` into a directory where you wish to store your work and run `#!bash arduino-cli sketch new ex1`.

After creating the `ex1` sketch, edit `ex1.ino` in your text editor of choice and type out the following code **exactly**.

## The Code

### ex1.ino

```arduino linenums="1"
--8<--
code/arduino-avr-programming/ex1/ex1.ino
--8<--
```

## Compiling & Flashing

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

=== "Arduino CLI"

	To compile the program run:

	```bash
	arduino-cli compile --fqbn arduino:avr:uno ex1
	```

	!!! note
		Unlike most compilers, Arduino CLI is a bit weird...
		Instead of running compile commands on explicit files, you instead run them against the sketch directory.

	If there were errors, make sure that you typed out the program **exactly** as above.

	Before you can flash your Arduino, you must first find out which serial port corresponds to your beloved Arduino.

	```bash
	arduino-cli board list
	```

	The output of the command should look something like this:

	```
	Port         Type              Board Name  FQBN            Core
	/dev/ttyACM0 Serial Port (USB) Unknown
	/dev/ttyACM1 Serial Port (USB) Arduino Uno arduino:avr:uno arduino:avr
	/dev/ttyS0   Serial Port       Unknown
	```

	In this example, the port that corresponds to the Arduino is `/dev/ttyACM1`.

	Finally, flash the compiled program to your Arduino:

	```bash
	arduino-cli upload -p /dev/ttyACM1 --fqbn arduino:avr:uno ex1
	```

	!!! note
		Replace `/dev/ttyACM1` with the port of *your* Arduino.

	If there were errors, make sure you have connected your Arduino correctly and selected the correct communication port.

## The Breakdown

### ex1.ino

**ex1.ino:1-4:** This hunk is what's called a multi-line comment.
Any text between `#!arduino /* */` will be ignored by the compiler.

**ex1.ino:6:** The `#!arduino setup()` function is a special function that *must* be included in every Arduino sketch.
Code inside the `#!arduino setup()` function is run once and is where you should initialize anything needed before your main loop.
For any function declaration to be complete, you must also declare a datatype.
The `#!arduino setup()` function is of type `#!arduino void`, which indicates that the function is expected to return no value.

**ex1.ino:7:** To begin the body of a function, you must wrap code inside curly braces.
Function blocks begin with a `#!arduino {`.

**ex1.ino:8:** The `#!arduino pinMode()` function allows you to specify pin behavior.
The first argument is the pin number, while the second argument is the mode.

**ex1.ino:9:** The `#!arduino }` indicates the end of the function block.

**ex1.ino:11:** The `#!arduino loop()` function is another special function that *must* be included in every Arduino sketch.
The `#!arduino loop()` function will run indefinitely and is where your main program should be.

**ex1.ino:13:** Single line comments are started with `#!arduino //`.
Anything past `#!arduino //` is considered a comment by the compiler.

**ex1.ino:14:** The `#!arduino digitalWrite()` function allows you to set pin states.
The first argument is the pin number, while the second argument is the state.

**ex1.ino:15:** The `#!arduino delay()` function allows for you to set a time delay within your program.
The function takes an integer value, for the amount of time, in milliseconds, you want to pause program execution.

Take note of the general syntax.
Notice that semicolons `#!arduino ;` are used to end statements, while commas `#!arduino ,` are used to list arguments.

## The Result

Now for the most exciting part: *the result*.
On your Arduino board, next to pin 13, you should see an LED labeled L, blinking on and off every second.

How exciting!

## Breaking It

Blinking an LED can only be fun for so long, so let me introduce you to *my favorite* part: *breaking it*.
What I want you to do is see what you can change to break the program.
Maybe change the order of things?
Delete some things?
Or even move them around in the program.

The choice is yours; the important thing is to take note of *what* caused your program to no longer work.
Spend a bit of time breaking this program.
It might seem like there is little to do, but I assure you there are plenty of ways to break this simple program.

## Extra Credit

* Animate the LED to flash a pattern.
* Visit the [official Arduino language reference](https://www.arduino.cc/reference/en/) and read up on all the functions used throughout the program.
* Look up the constant for the built-in LED and set that as the pin throughout the program. Check if the program still works.

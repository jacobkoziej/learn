# Exercise 2: *Macro Definitions & Build Automation*

In the last exercise, you blinked an LED, and in this lesson, you'll be doing the same thing.
The difference is that in this exercise, I'll cover things to make you a far more effective programmer.

What I'm about to say may be surprising to some of you, but the "best" code is code that is easiest to read and maintain.
*"But wait!"* I hear one of you yelling, *"Isn't the best code the code that runs the fastest!?"*
I too was once under this impression, but soon you realize this isn't the rule, rather the exception.

Programming is an art form.
It is a constant balance between efficiency and elegance.
Is it worth spending hours writing something that will run marginally faster?
I don't know about you, but I value my time over the computer's time.
The only time you *should* be writing the most efficient code is when you've settled on a final design, and you know it will be worth the investment to write marginally more efficient code.
If this is the case, then yes, spend that extra time perfecting your code.

I'll explain more in the breakdown, for now, create sketch `ex2` and type out the following code in the appropriate files.

## The Code

### ex2.ino

```arduino linenums="1"
--8<--
code/arduino-avr-programming/ex2/ex2.ino
--8<--
```

### Makefile

!!! note
	If you are using the Arduino IDE, you can safely ignore this file.

```makefile linenums="1"
--8<--
code/arduino-avr-programming/ex2/Makefile
--8<--
```

## Automating Builds

=== "Arduino IDE"

	There isn't much to do in regards to automating builds when using the Arduino IDE because it already does this for you.
	Although builds are automated, it doesn't hurt to learn some keybinds to save a second or two every time you want to compile or flash your program.

	To compile your program press ++ctrl+r++

	To flash your program press ++ctrl+u++

## The Breakdown

### ex2.ino

**ex2.ino:6-7:** `#!arduino #define` is a directive that allows for the definition of macros within your source code.
In this instance, we are creating constants for our source code.
`#!arduino LED` corresponds to `#!arduino LED_BUILTIN` and `#!arduino DELAY` corresponds to `#!arduino 1000`.
When the program gets compiled, the C preprocessor will first evaluate each macro before moving on to the next steps of the compiling process.

**ex2.ino:11:** After the C preprocessor runs through this line, it will evaluate to `#!arduino pinMode(LED_BUILTIN, OUTPUT);`.

**ex2.ino:17:** This line may look cryptic to a beginner, but it's simple.
We know from the last lesson that `#!arduino digitalWrite()` takes two arguments, the pin and the state.
The first argument, `#!adruino LED` is a macro which will evaluate to `#!arduino LED_BUILTIN`.
The second argument is the inverse of the value returned by `#!arduino digitalRead()`.
This function takes one parameter, a digital pin, and returns an `#!arduino int` value that is either `#!arduino 0` or `#!arduino 1`.
The prefix `#!arduino !` will then get the inverse of the return value, or in other words, enable us to toggle the pin.
In the end, this line will evaluate to either `#!arduino digitalWrite(LED_BULITIN, 0);` or `#!arduino digitalWrite(LED_BULITIN, 1);`.

**ex2.ino:18:** This line shouldn't be too difficult; it will just evaluate the `#!arduino DELAY` macro to `#!arduino delay(1000);`.

# Memory Management

Memory management, you're either going to love it or learn to love it.
The phrase itself often strikes fear in the eyes of beginner programmers.
Today, it might *feel* like such a topic is a thing of the past, but we often take for granted how much heavy lifting modern languages do behind the scenes; I'm looking at you, *Python*.
Fortunately for us, Arduino C does a pretty good job at hiding this harsh reality, perfect for beginner programmers.
Unfortunately, as your programs become more complicated, the more necessary it becomes to address this reality.

This isn't necessarily bad, quite the contrary.
Memory management brings you one step closer to understanding how computers work.
I personally feel that an Arduino serves as a great platform to introduce such a topic given how limited system resources are.
It's these limitations that drive creativity and cause you to think outside the box.
If you ask me, I think this is a beautiful side effect.

## An Overview of the ATmega328P's Memory

As mentioned beforehand, the Arduino Uno Rev3 isn't a real microcontroller but an abstraction layer.
The real microcontroller found on this Arduino board is the Atmel ATmega328P which contains the following amounts of memory:

```
Flash  - 32kb (of which the Arduino bootloader uses 0.5kb)
SRAM   - 2kb
EEPROM - 1kb
```

!!! tip
	You can regain the 0.5kb of flash memory lost to the Arduino bootloader by flashing your Arduino using an ISP programmer.
	Although you regain some lost space, you will lose the ability to flash your program using the built-in USB serial programmer.
	To regain this functionality, you will need to burn the Arduino bootloader using your ISP programmer.

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

### Memory Addresses

Just like real locations have addresses, so do memory cells.
Much like we need an address to know how to get somewhere in real life, a computer needs a memory address to know where to access data.

The ATmega328P has a Harvard architecture where the processor has separate busses for program instructions and data stored in memory.
If that made absolutely no sense, that's okay!
All you need to understand from what I mentioned above is that because of the ATmega328P's architecture: it's possible to have places in memory with the same address.
With that said, here are the memory addresses for each of the aforementioned memories:

!!! note
	These diagrams aren't to scale.

Program Memory:

```
+-------------------+  0x0000
|                   |
|                   |
|                   |
|                   |
| Application Flash |
|                   |
|                   |
|                   |
|                   |
|~~~~~~~~~~~~~~~~~~~|
|    Boot Flash     |
+-------------------+  0x3FFF
```

Data Memory:

```
+-------------------+
|   32 Registers    |  0x0000 - 0x001F
+-------------------+
|    64 I/O Reg.    |  0x0020 - 0x005F
+-------------------+
| 160 Ext I/O Reg.  |  0x0060 - 0x00FF
+-------------------+
|                   |
|   Internal SRAM   |  0x0100 - 0x08FF
|                   |
+-------------------+
```

EEPROM Data Memory:

```
+-------------------+  0x0000
|                   |
|      EEPROM       |
|                   |
+-------------------+  0x03FF
```

As you can see, there are a fair bit of memory addresses.
Luckily for you, you don't have to worry about most of these addresses. The only real address range that you should be concerned about is the one related to EEPROM, and that's just if you're using it.
All the other addresses you'll have to worry about are either managed by the compiler or defined as macros by AVR Libc.

It might seem useless to know all this information right now, but it will be critical to understanding more complex topics down the line like pointers or modifying hardware registers.

### Program Memory

The in-system programmable flash program memory is where Arduino sketches reside.
The keen-eyed of you may have noticed that the address range of the flash memory has about 16k possible addresses, half the advertised size.
That's not a mistake.
Since all AVR instructions are either 16 or 32 bits wide, the flash memory consists of 16k 16-bit cells, or in other words, 32k bytes.

Flash, although non-volatile, is read-only during program execution.
To modify any value stored in the flash memory, you must first copy it into SRAM and then work with the duplicate.

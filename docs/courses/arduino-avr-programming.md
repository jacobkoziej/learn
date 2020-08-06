---
titile: Arduino AVR Programming Course Overview
description: Get started on what to expect from Arduino AVR Programming.
---

# Course Overview

## Arduino C Is a Child’s Programming Language

Now before you get your pitchforks and torches out, please let me explain.
I think that Arduino C is an excellent programming language, its easy to learn, easy to work with, and has safety features to stop you from doing something really stupid.
That being said, Arduino C has its purpose: serve as a platform of entry into programming microcontrollers.
What I'm trying to hint here is to use the right tool for the job, Arduino C is meant for learning and prototyping, not production.

## There's More than Meets the Eye

![Arduino Uno Rev3](../assets/images/arduino-uno-rev3.svg){ align=right }
For this course, I will be making use of the Arduino Uno Rev3, mostly because it's by far the most popular AVR-based Arduino model on the market.
Now, this may be a surprise to some of you, but an Arduino is **not** a microcontroller.
The actual microcontroller on this Arduino model is the ATmega328P-PU (the big 28 pin chip by the analog and power pins).
Although it is **incorrect** to refer to an Arduino as a microcontroller, *for now*, I will call the Arduino a microcontroller for the sake of making it easier to understand.

Having said that, I generally have mixed feelings about abstraction.
There's a delicate balance that has to be struck to make something truly great, and this is where I think the Arduino engineers nailed it.
It's perfect for a newbie, everything's wrapped into an easy to use board and a nice GUI IDE to work with, making it so easy that almost *anyone* can use an Arduino.

!!! note
	Now for the more advanced of you, don't run away just yet.
	Although this course is catered more towards beginners, there is an expansion in most exercises, and at times an "advanced" version of an exercise.
	You can think of this as "going above and beyond", they're just things that are nice to know when you come across them further down the line and not necessary when being introduced to a concept.

Although abstraction makes an Arduino a joy to work with, it comes at a cost.
What most people don't seem to understand is that when you abstract something, you're giving away a varying amount of finite control.
When just starting, you might not run into the limitations of Arduino C, but sooner or later, you're going to need to dive deeper.
The great thing is that Arduino C is built upon AVR C, meaning you can inject snippets of AVR C to get back that finite control, but I won't get ahead of myself just yet.

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

## What You Will Learn

The purpose of this course is to get you comfortable enough with Arduino C so that you can move on to a *real* programming language.
I recommend moving on to C or C++ as they are both widely used for programming microcontrollers or other embedded systems.
The transition should be easy coming from a language like Arduino C since it's strongly typed.[^1]
What I will teach you is:

* The syntax and quirks of Arduino C
* Extending the functionality of Arduino C
* How to debug and catch bugs before they happen
* Best practices to prevent technical debt[^2]
* How to break down a problem and design a solution
* Reading the manual (I can't stress the importance of this enough)

By the end of the course, you'll have enough knowledge under your belt to create your own Arduino projects or modify someone else's.

## How to Go Through This Course

Don't expect anything if you don't put in the work.
If you don't want to put in the effort, you might as well leave now and not waste your time.
Now that I've gotten that out of the way, this course is meant for someone with a basic understanding of computer science.
If you don't, no worries, you've just got extra homework to do when going through exercises.

For those of you that already know how to code, you might find my methods of teaching a bit *unorthodox*.
Instead of just presenting to you the facts of how Arduino C functions, I'll be guiding you through each exercise, making you type out *everything*.
What you might find is that sometimes I will lead you into dead ends before explaining the "correct" way to solve a problem you might encounter.
This seems to be a bit counter-intuitive at first, but it will prepare you for the real world when nobody's there to hold your hand as problems arise.

Because of the way I'm structuring this course there are a few things you *must* do:

* Type **everything**, no copypasta!
* Type the code **exactly** as it appears, this includes comments
* Make sure the code runs **exactly** as intended
* You need to go through **all** exercises
* Complete the extra credit, skip anything you can't figure out
* Always try to figure out problems before asking for help

Now the reason why I have these hard guidelines is that each exercise builds on the previous.
You can think of it like building a skyscraper: you can't build the next floor if the previous one is incomplete.
That being said, some of you might follow my instructions exactly and still not be able to program in Arduino C.
Programming isn't for everyone, but if you try and are persistent, you're bound to improve.

## Developing a Strong Foundation

Everyone is far from perfect, and that's fine, but it's important to take note of your shortcomings.
You might have zero experience with a text-based programming language, or you might be a programming wiz, but I'd be willing to bet that there's at least one thing that you can improve.
Either way, Arduino C can be *unforgiving* at times.
Although it *tries* to be a noob-friendly programming language, Arduino C can only do so much if you don't pay attention.

### Reading & Writing

I'll let you in on a little secret.
The secret to good code is writing something easy to read.
It may seem like something obvious, but it's a bit deceiving.
When you are writing code in the moment, it might make perfect sense, but what about a few months down the line?
What about the poor soul that'll read your code?
I get that it's *easy* to hack something together, but it won't be fun when you're pulling your hair out trying to comprehend the spaghetti code you whipped up.

### Attention to Detail

There are **a lot** of *"gotcha"* moments when working with something like Arduino C.
When working with a strongly typed language, it's easy to make small syntax errors.
This could be as simple as forgetting a semicolon or as painful as forgetting a `#!arduino break` inside of a switch statement and then pulling your hair out trying to fix a silent bug.
Detail is *everything* when programming.
Neglect this one detail and be prepared for a long day of cursing out your computer.

[^1]: [Wikipedia - *Strong and weak typing*](https://en.wikipedia.org/wiki/Strong_and_weak_typing)
[^2]: [Wikipedia - *Technical debt*](https://en.wikipedia.org/wiki/Technical_debt)

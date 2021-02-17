# Clean Code

There are few things in the world of programming that I find more satisfying than clean code.
Not only is it *elegant*, but it's often *clever as hell*.

Code is an art form, and just like art, it is never finished, only abandoned.
Writing clear and concise code will only come from one thing: *experience*.
That being said, there are some things you can do to speed up this process, namely learning the features of your language of choice.

Without further adieu, here are some not-so-obvious features of C-like languages.

## Conditional Statements

One of the first things that can be cleaned up in beginner code is conditional statements.
In most C-like languages, any non-zero value is considered true.

As an example, let's look at the following code:

```arduino
if ((digitalRead(PIN) == HIGH) && (foo == 0)) {
	foo = 1;
} else {
	foo = 0;
}
```

Fairly ugly, but what if I told you it's possible to condense this into a single line of code?

Let's start by cutting out some of the clunky code:

```arduino
if (digitalRead(PIN) && !foo) {
	foo = 1;
} else {
	foo = 0;
}
```

!!!note
	In the Arduino standard, `#!arduino HIGH` is defined as `#!arduino 1`, and `#!arduino LOW` is defined as `#!arduino 0`.

Right away, you can see how much more concise the code has become.

The first thing to note here is the return value of `#!arduino digitalRead()`.
Since we know that `#!arduino digitalRead()` returns an `#!arduino int` value of either `#!arduino 0` or `#!arduino 1`, we can condense our statement.
In this situation, we're only interested in a `#!arduino HIGH` reading (which coincides with `#!arduino 1`), so we can drop the `#!arduino == HIGH` as the condition automatically evaluates to `#!arduino 1` (true).

Along with a `#!arduino HIGH` reading from `#!arduino PIN`, we also want our dummy variable, `#!arduino foo`, to be `#!arduino 0`.
Here is where our friend, the logical NOT (`#!arduino !`) operator, comes into play.
If any condition's result is non-zero (true), it returns `#!arduino 0` (false), and if any condition's result is `#!arduino 0` (false), it returns `#!arduino 1` (true).
Therefore, `#!arduino foo == 0` can be rewritten as `!foo` because it will only be true when `#!arduino foo` has the value of `#!arduino 0`.

As nice as the current `#!arduino if-else` case is, it's not a single line like I promised.

### The Ternary Operator

It turns out that the code above is a very common operation, so much so that it warranted an operator of its own.

The ternary (`#!arduino ? :`) operator often catches new programmers off guard, but once learned, allows for far more concise code.

As promised, here is the single line of code:

```arduino
foo = (digitalRead(PIN) && !foo) ? 1 : 0;
```

Satisfying right?
And this is just *one* of the little tricks you can take advantage of to write cleaner code.

!!! tip
	To easily remember how the ternary operator is structured, I like to think of it as a question:

	```arduino
	is_my_condition_true ? yes : no
	```

	If the condition evaluates to true, the first expression is evaluated and returned.
	If the condition isn't true, the second expression is evaluated and returned.

## Comments

Comments, you hate writing them, but love reading them, that's of course if they're good comments.
I find that commenting is often a struggle for beginner programmers because they're confused as to what to comment.
The code produced is either absent of comments or marked to the brim with overly verbose comments.
So then, what do we comment?

### Why, Not How

If you think about it, comments primarily exist to clarify things that may not be immediately obvious.
That said, comments should explain **why** and **not how** you implemented something.
What's important to realize here is that the code already shows the reader *how* you implemented a feature, but that doesn't necessarily coincide with an understanding as to *why* you implemented a feature.
As a good rule of thumb, write comments to clarify things you wouldn't understand reading your code the first time around.

Useless comments:

```arduino
int foo = 13;  // initialize integer variable foo with a value of 13
// specify the pins of the seven segment display using an unsigned byte array
uint8_t SEVEN_SEGMENT_PINS[8] = {3, 4, 5, 6, 7, 8, 9, 10};

void setup()
{
	// initialize the serial interface with a baud rate of 9600
	Serial.begin(9600);
	// set the UPM01 and UPM00 flags in the UCSR0C register
	UCSR0C |= _BV(UPM01) | _BV(UPM00);

	// set the mode of SEVEN_SEGMENT_PINS 0 to 7 as outputs
	for (int i = 0; i < 8; i++)
		pinMode(SEVEN_SEGMENT_PINS[i], OUTPUT);

	++foo;  // increment variable foo by 1
}
```

Useful comments:

```arduino
int foo = 13;
uint8_t SEVEN_SEGMENT_PINS[8] = {3, 4, 5, 6, 7, 8, 9, 10};

void setup()
{
	Serial.begin(9600);
	// enable odd parity for serial communication
	UCSR0C |= _BV(UPM01) | _BV(UPM00);

	// initialize the seven segment display
	for (int i = 0; i < 8; i++)
		pinMode(SEVEN_SEGMENT_PINS[i], OUTPUT);

	++foo;
}
```

### Remember Why You're Commenting

When you write code, you're more often than not writing something that's going to be read by someone else or yourself months, if not years down the line.
Remember, the goal is to write something efficient **and easy to read**.
What use is the fastest code in the world if someone must invest hours of their time figuring out why you implemented a feature?
As tempting as it may be to exclude comments, you'll be thanking me when you come back to your code later down the line.
Either that or you'll be cursing out your program. You have been warned!

## Naming Conventions

It's often joked that naming things is one of the hardest parts of programming, and quite frankly, it isn't that far from the truth.
Unfortunately, I can't help you come up with clever and creative names.
Fortunately, though, I can help you in creating a good naming convention.
Not only does a good naming convention make for clean code, but it saves time and reduces confusion.

### Constants v. Variables

In my opinion, the difference between constants and variables should be *very* pronounced to remove any chance of confusion.
In general, capitalize constants (i.e. `#!arduino F_CPU`), and lowercase variables (i.e. `#!arduino var_delay`).
Not only does such a naming convention allow for easy differentiation between constants and variables throughout your program, but it coincides with constant declarations in most header files.

### Verbosity

Naming verbosity is something that I see gotten wrong time and time again.
Don't call your iterative variable in a `#!arduino for` loop `#!arduino local_iteration_variable`, or call a globally-scoped variable `#!arduino x`.
Generally speaking, when the scope of a variable decreases, so should its specificity.
On the other extreme of the spectrum, be concise when naming variables or functions.
Please don't name a function `#!arduino fast_inverse_square_root()`, `#!arduino Q_rsqrt()` is more than enough.

!!! tldr
	Don't be too vague or too specific; shorten words while staying clear and concise.

## Whitespace

Whitespace: it's all the space you don't see.
In case you're unfamiliar with whitespace, it is *"any character or series of characters that represent horizontal or vertical space in typography"*.[^1]
In most languages, whitespace serves no purpose besides making code easier to read, and because of this feature, things like the whitespace programming language actually exist.[^2]
As cool as this esoteric programming language is, what can you do about whitespace to make your code easier to read?

### Indentation

Indents serve as a way to divide your code into logical blocks.
I personally prefer 8-character wide indents.
Some may view this as excessive, but the whole premise behind indents is to clearly define blocks of code, something difficult to do with 4 or 2 character wide indents.
Others may argue that such wide indents make code difficult to read.
The answer to that is if you need more than three levels of indentation, you're probably not writing the best code and should rethink your current implementation.

### Long Lines

It's a good rule of thumb to keep your code below 80 characters in width.
It may seem like an arbitrary value, but it actually stems from old terminals that were 80 characters wide.
Nevertheless, this isn't a hard limit, just an indicator if you should restructure your code.
The only exception to this rule would be breaking user-visible strings, as this breaks the ability to grep for them, something crucial in multi-file projects.

!!! info "Did you know?"
	Lines of code is a terrible way to measure the quality of code!
	You may be mistaken in thinking that more lines of code equate to more work done, and with that, I'll leave you with the following:

	!!! quote
		"One of my most productive days was throwing away 1,000 lines of code." - *Ken Thompson*

	On the other end of the extreme, less does not always mean better.
	Don't be mistaken into thinking fewer lines of code always means a more efficient program.
	In fact, most programming languages allow for an entire program to be condensed into a single line, making this measurement misleading at best!

### Chunks

Break your code into chunks as most functions have distinct steps to them.

For example:

```arduino
void setup()
{
	// step 1: initialize the serial interface
	Serial.begin(9600);

	// step 2: obtain initial sensor readings
	for (int i = 0; i < 4; i++) {
		pinMode(INPUT_ARR[i], INPUT);
		init_state[i] = analogRead(INPUT_ARR[i]);
	}

	// step 3: set the initial state of pins
	for (int i = 0; i < 3; i++) {
		pinMode(OUTPUT_ARR[i], OUTPUT);
		analogWrite(OUTPUT_ARR[i], INIT_VAL[i]);
	}
}
```

!!! note
	The comments above serve no purpose besides highlighting the distinct steps.

The code above isn't all that useful, but it does illustrate the point I'm trying to get across.
You can effortlessly see the steps of the `#!arduino setup()` function: the initialization of the serial interface, obtaining initial sensor readings, and setting initial pin states.
By breaking a function into chunks, you break down a complex solution into its simple components, making it far easier to read and understand.

## Braces

Brace styling is one of the more opinionated sections, and I'm not someone to force my opinion onto anyone ***but*** some styles are arguably better than others.

### Brace Placement

I personally like to in-line all of my braces, **except** for function definitions.
The reason why I like to do this is simple: functions are *"special"*, and this makes them far more pronounced.

For example:

```arduino
void setup()
{
	Serial.begin(9600);

	for (int i = 0; i < ARR_SIZ; i++) {
		pinMode(PIN_ARR[i], OUTPUT);
		digitalWrite(PIN_ARR[i], HIGH);
	}
}
```

### Brace Omission

Although braces are often needed, they can be omitted for the bodies of  `#!arduino if`, `#!arduino if-else`, `#!arduino for`, `#!arduino while`, and `#!arduino do-while` statements if the body consists of a single statement.
Just be warned, this might cause unintentional bugs if you're not careful!

One of my favorite uses for this is checking if an input argument is damaging to hardware:

```arduino
int motor_driver(uint8_t speed, uint8_t control_flags)
{
	/*
	 * In this example I'm checking if the user set control bits that could
	 * cause an h-bridge motor circuit to short.  If any error condition is
	 * met, the function returns an error value and exits prematurely.
	 */

	// circuit protection
	if (control_flags & (1 << 0 | 1 << 3)) return -1;
	if (control_flags & (1 << 1 | 1 << 2)) return -1;

	...
```

## Compound Assignment

Programmers are *lazy*, at least the good ones.
I use lazy lightly because what I mean is that programmers often try to do something in the least repetitive way possible.
Given a programmer's mission of getting as much done with as little effort possible, you are obligated to make use of compound assignments or risk the sin of typing more than you have to.

Jokes aside, it's important to use your tools effectively.
Much like you wouldn't dig a hole with a spoon, you don't want to type out compound operations defined by your language's standard.

### Compound Operators

|  Compound Operation | Non-compound Equivalent |
| :-----------------: | :---------------------: |
| `#!arduino x *= y`  | `#!arduino x = x * y`   |
| `#!arduino x /= y`  | `#!arduino x = x / y`   |
| `#!arduino x += y`  | `#!arduino x = x + y`   |
| `#!arduino x -= y`  | `#!arduino x = x - y`   |
| `#!arduino x %= y`  | `#!arduino x = x % y`   |
| `#!arduino x &= y`  | `#!arduino x = x & y`   |
| `#!arduino x |= y`  | `#!arduino x = x | y`   |
| `#!arduino x ^= y`  | `#!arduino x = x ^ y`   |
| `#!arduino x <<= y` | `#!arduino x = x << y`  |
| `#!arduino x >>= y` | `#!arduino x = x >> y`  |

### Prefix v. Postfix (Increment/Decrement)

You're probably familiar with the increment/decrement (`#!arduino ++`/`#!arduino --`) operators, but you may not be aware that their placement matters at times.

Let's look at the following examples:

*Prefix:*

```arduino
int x, y, z;
x = y = 13;

z = ++x;  // x and z are both 14
z = --y;  // y and z are both 12
```

*Postfix:*

```arduino
int x, y, z;
x = y = 13;

z = x++;  // x is 14 while z is 13
z = y--;  // y is 12 while z is 13
```

What to note here, the prefix increment/decrement will increase or decrease a variable before being read, while the postfix increment/decrement will read a variable, *then* increase or decrease a variable.
It's a minute feature, but knowing this will save you from a *very* bad headache later down the road.

## Endnotes

There is no *"right"* or *"wrong"* way to write code.
Everyone has their own style.
These are merely *my recommendations*.
For all I care, you can write all your code on a single line; I just don't think you'll be having a great time.

What I hope you do is *explore*.
Read other people's code.
Take notes on what they did well and what they did poorly.
I can assure you you're going to learn something new, or at the very least, be amused by a great example of what *not* to do.

[^1]: [Wikipedia - *Whitespace character*](https://en.wikipedia.org/wiki/Whitespace_character)
[^2]: [Wikipedia - *Whitespace (programming language)*](https://en.wikipedia.org/wiki/Whitespace_%28programming_language%29)

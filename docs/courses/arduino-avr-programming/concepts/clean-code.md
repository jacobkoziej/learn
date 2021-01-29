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

The ternary operator often catches new programmers off guard, but once learned, allows for far more concise code.

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

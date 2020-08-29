/*
 * Exercise 1
 * Blinking the built-in LED
 */

void setup()
{
	pinMode(13, OUTPUT);
}

void loop()
{
	// Turn on LED for 1000ms
	digitalWrite(13, HIGH);
	delay(1000);

	// Turn off LED for 1000ms
	digitalWrite(13, LOW);
	delay(1000);
}

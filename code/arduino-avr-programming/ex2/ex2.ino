/*
 * Exercise 2
 * Macro Definitions & Build Automation
 */

#define LED   LED_BUILTIN
#define DELAY 1000

void setup()
{
	pinMode(LED, OUTPUT);
}

void loop()
{
	// Toggle LED state every DELAY
	digitalWrite(LED, !digitalRead(LED));
	delay(DELAY);
}

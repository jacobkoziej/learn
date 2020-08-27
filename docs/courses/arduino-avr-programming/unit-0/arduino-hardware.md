# Arduino Hardware

As mentioned beforehand, this course is written with the Arduino Uno Rev3 in mind (although any AVR-based Arduino should be fine).
Since the Arduino has a different architecture from your modern desktop computer, the Arduino software has to do some software trickery behind the scenes to generate something that the Arduino can run.
Hidden away from you is the process of running your source code through a compiler toolchain before finally being flashed to the Arduino's flash memory.
If none of this made any sense, **DO NOT WORRY**, I will explain this process more in-depth later in this course.
As far as you should be concerned, the code *you* see is not the actual code the microcontroller runs.

To get your computer pumping out programs that the Arduino can run, you're going to need to install the appropriate Arduino AVR cores.

=== "Arduino IDE"

	Open the Arduino IDE, and click on `Tools` in the menu, then `Boards > Board Manager`.
	When the board manager pops up, search for `Arduino AVR Boards`.
	You should then see `INSTALLED`, next to the appropriate cores, if not then click on the install button.
	When the installation is complete, the `INSTALLED` tag should show up next to the appropriate cores.

=== "Arduino CLI"

	Open a terminal and run the following commands:

	```bash
	# Update the local cache of available platforms.
	arduino-cli core update-index

	# Install the Arduino AVR cores.
	arduino-cli core install arduino:avr

	# Check if the installed cores are listed.
	arduino-cli core list
	```

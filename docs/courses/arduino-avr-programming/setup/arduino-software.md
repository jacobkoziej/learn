# Arduino Software

Ah, the initial test: getting the software required for the rest of this course.
You're a bit in luck because there are more or less just two options when it comes to the Arduino software you'll need to install.
The first of the two is the standard Arduino IDE, which has everything you'll need to program Arduinos.
If you're a bit more advanced and comfortable with the terminal than I recommend going for the Arduino CLI.
Both options have their pros and cons, research both and make a decision that is best for you.

=== "Arduino IDE"

	=== "Windows"

		Installing the Arduino IDE on Windows is easy.
		Just head over to the [software page](https://www.arduino.cc/en/Main/Software) on the official Arduino website and download the appropriate binary.

		For further clarification, read the official [install instuctions](https://www.arduino.cc/en/guide/windows).

	=== "Mac OS"

		Installing the Arduino IDE on Mac OS is easy.
		Just head over to the [software page](https://www.arduino.cc/en/Main/Software) on the official Arduino website and download the appropriate binary.

		For further clarification, read the official [install instuctions](https://www.arduino.cc/en/guide/macOSX).

	=== "Linux"

		If you're running Linux, I'll make the safe assumption that you know what you're doing and know how to install the Arduino IDE using your package manager or building it from source.
		If not, head over to the [software page](https://www.arduino.cc/en/Main/Software) on the official Arduino website and download the appropriate archive for your architecture.
		Then extract the downloaded archive and run the install script.

		!!! attention
			You might need to add your user account to the appropriate user groups to access serial ports on your system.

		For further clarification, read the official [install instuctions](https://www.arduino.cc/en/guide/linux).

=== "Arduino CLI"

	For those of you brave enough to forego the Arduino IDE, I congratulate you on making the better decision.
	In my eyes, Arduino CLI is the superior option and allows for the most freedom and flexibility.
	At the same time, prepare for a mild learning curve starting right now.
	It's your job to read the documentation and figure out how to install it on your system.
	I'll just be giving a few special notes on each OS.

	Installation documentation can be found [here](https://arduino.github.io/arduino-cli/latest/installation/).

	=== "Windows"

		I'm not a real fan of Windows.
		I can go off on why you shouldn't use it, but that's outside the scope of this course.
		Despite this, if you are going to use Windows here are a few things to note:

		* Arduino CLI shines on an \*nix operating system so be prepared for a bit of hacking on Windows
		* You should add Arduino CLI to your PATH so that you can easily invoke the program in the command prompt
		* Working with the serial monitor is a bit of a hassle on Windows

		!!! tip
			Consider installing Windows Subsystem for Linux (WSL) and installing Arduino CLI following the Linux documentation.
			Although it's a bit of work to set up, it will make working with Arudino CLI *significantly* easier.
			> At the time of writing this course, only WSL 1 supports serial devices, support in WSL 2 is still under development.

	=== "Mac OS"

		I have mixed feelings about Mac OS, as much as I hate Apple for treating you like an idiot, Mac OS is a \*nix operating system, and that makes working with the terminal an absolute joy.
		I *highly* recommend installing [brew](https://brew.sh/) as it'll make installing the required software convenient.
		Besides that, consider setting a dark terminal color scheme so that the terminal doesn't burn into your retinas every time you open it.

	=== "Linux"


		I *love* Linux for the freedom and flexibility it gives you.
		All of that freedom and flexibility equates to you having a great time when working with Arduino CLI.
		There are just a few things to note before installing Arduino CLI:

		* Check if Arduino CLI is in your distribution's software repositories before installing using the official documentation
		* Make sure to add your user account to the appropriate user groups to access serial ports on your system

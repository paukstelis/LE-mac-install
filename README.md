This shell script installs OctoPrint and all plugins specific to the LatheEngraver.

The overall instructions are as follow:
1. Install Python. As of June, 2025 it is recommended to install Python **3.12.10**. Installing later versions of Python can lead to problems. You can find a MacOS installer here: https://www.python.org/downloads/macos/
2. Download the script here. It _will_ require Administrator access. Open a terminal. Assuming the file went to your Downloads directory, issue the command: `mv Downloads/le_install.mac.sh .`. You may need to change the permissions of the file: `chmod +x le_install_mac.sh`. Then execute the file: `./le_install_mac.sh`
3. The script will prompt you to install Xcode, a new window will open that will have an install button that will then install Xcode. This window may be buried behind something else, so make sure you look out for it.
4. To access OctoPrint, open a web browser and navigate to http://localhost:5001

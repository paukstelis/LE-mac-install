#!/bin/sh

xcode-select --install


python3 -m venv ~/OctoPrint
~/OctoPrint/bin/pip install OctoPrint
~/OctoPrint/bin/pip install https://github.com/paukstelis/OctoPrint-LatheEngraver/archive/refs/heads/main.zip

~/OctoPrint/bin/pip install https://github.com/paukstelis/OctoPrint-Gcode_ripper/archive/refs/heads/main.zip

~/OctoPrint/bin/pip install https://github.com/paukstelis/LE-Profiler/archive/refs/heads/main.zip

~/OctoPrint/bin/pip install https://github.com/paukstelis/OctoPrint-Simplethreads/archive/refs/heads/main.zip

~/OctoPrint/bin/pip install https://github.com/jneilliii/OctoPrint-MultiLineTerminal/archive/refs/heads/master.zip

~/OctoPrint/bin/pip install https://github.com/paukstelis/LE_Scanning/archive/refs/heads/main.zip

~/OctoPrint/bin/pip install https://github.com/paukstelis/LE-RoseEngine/archive/refs/heads/main.zip


OCTOPRINTUSER="$USER"

sed "s/OCTOPRINTUSER/$OCTOPRINTUSER/g" <<EOF > output.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>latheengraver.octoprint</string>

    <key>OnDemand</key>
    <false/>

    <key>UserName</key>
    <string>OCTOPRINTUSER</string>

    <key>ProgramArguments</key>
    <array>
            <string>/Users/OCTOPRINTUSER/OctoPrint/bin/octoprint</string>
            <string>serve</string>
    </array>
    <key>KeepAlive</key>
    <true/>
</dict>
</plist>
EOF

sudo cp ./output.plist /Library/LaunchDaemons/octoprint_le.plist
rm ./output.plist
launchctl load /Library/LaunchDaemons/octoprint_le.plist
launchctl start /Library/LaunchDaemons/octoprint_le.plist




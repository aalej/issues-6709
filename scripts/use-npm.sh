#! /usr/bin

echo "-- Starting script"

# Attempt to delete `firebase-tools` installed via NPM.
if [[ $(which firebase) ]]; then
    echo "-- Found 'firebase-tools' installed, deleting"
    echo "-- Running 'curl -sL firebase.tools | uninstall=true bash'"
    curl -sL firebase.tools | uninstall=true bash
else
    echo "-- Did not find 'firebase-tools'"
fi

# Install the standalone binary version of `firebase-tools`
echo "-- Running 'npm install -g firebase-tools'"
npm install -g firebase-tools

echo "-- Completed installation"
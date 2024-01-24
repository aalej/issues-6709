#! /usr/bin

echo "-- Starting script"

# Attempt to delete `firebase-tools` installed via NPM.
if [[ $(npm list -g | grep firebase-tools) ]]; then
    echo "-- Found 'firebase-tools' installed via npm, deleting"
    echo "-- Running 'npm uninstall -g firebase-tools'"
    npm uninstall -g firebase-tools
else
    echo "-- Did not find 'firebase-tools'"
fi

# Install the standalone binary version of `firebase-tools`
echo "-- Running 'curl -sL https://firebase.tools | bash'"
curl -sL https://firebase.tools | bash

echo "-- Completed installation"
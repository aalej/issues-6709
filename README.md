# Repro for Firebase Tools issue 6709

## Versions

firebase-tools: v13.0.3<br>
node: v18.18.0

## Steps to reproduce the issue

1. Install dependencies
   - cd `functions`
   - cd `npm install`
1. If you have `firebase-tools` installed via NPM, uninstall it
   - Alternatively, run `bash scripts/use-firepit.sh` to install `firebase-tools` via curl
1. Install `firebase-tools` via `curl -sL https://firebase.tools | bash`
1. Run `firebase emulators:start --only functions --inspect-functions --project demo-project`
1. On VS Code, click the "Run and Debug icon" on the side bar
1. On the top left corner, click "Debug" play button
1. It does not connect the debugger
   - Tried running "npm i node@18.0.0 --save-dev" in the functions directory,
     no changes in behavior
   - Running `lsof -ti tcp:9229` returns blank

## Notes

Trying this out using the `firebase-tools` installed via NPM works as expected

1. If you have `firebase-tools` installed via curl, uninstall it
1. Install `firebase-tools` via `npm install -g firebase-tools`
   - Alternatively, run `bash scripts/use-npm.sh` to install `firebase-tools` via NPM
1. Run `firebase emulators:start --only functions --inspect-functions --project demo-project`
1. On VS Code, click the "Run and Debug icon" on the side bar
1. On the top left corner, click "Debug" play button
1. Debugger connects as expected

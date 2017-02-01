#/bin/bash
export TEST_CLI="I am a custom string from the command line"
xcodebuild test -project Swift\ Env\ Test.xcodeproj -scheme "Swift Env Test" -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.2'

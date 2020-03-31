expo build:ios --type simulator --release-channel e2e_test
expo build:status
wget https://exp-shell-app-assets.s3.us-west-1.amazonaws.com/ios/%40wen-kai/expo-detox-travis-3-c95eacf9-c334-4c48-9379-42c6214e028e-simulator.tar.gz
tar -xvzf expo-detox-travis-3-c95eacf9-c334-4c48-9379-42c6214e028e-simulator.tar.gz
open -a `xcode-select -p`/Applications/Simulator.app
xcrun simctl install booted expo-detox-travis-3.app
xcrun simctl launch booted com.expoDetoxTravis.expoDetoxTravis
detox test 

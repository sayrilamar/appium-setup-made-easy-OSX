#!/bin/bash
echo "Welcome to appium setup made easy for ... ios"
echo "$1" | sudo -S chown -R `whoami` /usr/local
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing Appium"
npm install -g appium
npm upgrade -g appium
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing Authorize iOS"
npm install -g authorize-ios
npm upgrade -g authorize-ios
echo "$1" | sudo -S authorize-ios
echo "$1" | sudo -S xcode-select -s /Applications/Xcode.app/Contents/Developer
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing iOS Deploy"
npm install -g ios-deploy
npm install -g upgrade ios-deploy
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing XCPRETTY"
echo "$1" | gem install xcpretty
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing CARTHAGE"
brew update
brew install carthage
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing LIBIMOVILEDEVICE"
brew install libimobiledevice --HEAD
brew upgrade libimobiledevice --HEAD
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing IDEVICEINSTALLER"
brew install ideviceinstaller
brew upgrade ideviceinstaller
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Installing IOS-WEBKIT-DEBUG-PROXY"
brew install ios-webkit-debug-proxy
brew upgrade ios-webkit-debug-proxy
echo "$1" | sudo -S chmod +x /var/db/lockdown
cd /usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent/
mkdir -p Resources/WebDriverAgent.bundle
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Running BOOTSTRAP"
./Scripts/bootstrap.sh -d
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Updating All Brew-Installed Apps"
brew outdated | brew upgrade
echo "                         "
echo "                         "
echo "                         "
echo "--------------------Updating All Global and Local NPM Apps"
npm update -g
npm update
echo "                         "
echo "                         "
echo "                         "
appium-doctor --ios
echo "Opening Xcode ............"
open WebDriverAgent.xcodeproj

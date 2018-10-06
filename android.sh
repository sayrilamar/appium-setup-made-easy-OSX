#!/bin/bash
echo "Welcome to appium setup made easy for ... android"
brew doctor
brew install ant
brew install maven
brew install gradle
brew cask install android-sdk
brew cask install android-ndk
brew install sdkmanager
brew cask install sdkmanager
npm i -g npm
npm install -g appium
path=$($HOME)
echo $path
cd $path
#mkdir appium_android_setup
cd appium_android_setup
echo "Downloading Android SDK tool ...."
#curl -O 'https://dl.google.com/android/repository/sdk-tools-darwin-3859397.zip'
#mkdir android
#mv sdk-tools-darwin-*.zip android/
cd android
#unzip sdk-tools-darwin-*.zip
echo "Accepting Android SDK licenses"
yes Yes | android update sdk --no-ui
yes Yes | sdkmanager --update
yes Yes | platform-tools/bin/sdkmanager --licenses
echo "Updating the Android sdk manager tool"
yes Yes | platform-tools/bin/sdkmanager --update
echo "Downloading other dependency tools ..."
platform-tools/bin/sdkmanager "platforms;android-25" "build-tools;25.0.2" "extras;google;m2repository" "extras;android;m2repository"
#rm sdk-tools-darwin-*.zip
echo "make sure to set below path as ANDROID_HOME"
pwd
export ANT_HOME=/usr/local/opt/ant/libexec
export MAVEN_HOME=/usr/local/opt/maven
export GRADLE_HOME=/usr/local/opt/gradle
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/share/android-ndk
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export PATH=$ANDROID_HOME/build-tools/$(ls $ANDROID_HOME/build-tools | sort | tail -1):$PATH
brew update
android update sdk --no-ui
echo INSTALLING ANDROID STUDIO...
brew cask install android-studio
appium-doctor --yes --dev

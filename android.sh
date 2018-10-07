#!/bin/bash
echo "Welcome to appium setup made easy for ... android"
echo "$1" | sudo -S mkdir -p /usr/local/sbin
echo "$1" | sudo -S chown -R $(whoami) /usr/local/sbin
echo "                         "
echo "                         "
echo "                         "
echo "### Pruning Brew ###"
brew prune
echo "                         "
echo "                         "
echo "                         "
echo "### Upgrading Git ###"
brew upgrade git
echo "                         "
echo "                         "
echo "                         "
echo "### Checking Brew Health ###"
brew doctor
echo "                         "
echo "                         "
echo "                         "
echo "### Updating Brew ###"
brew update
echo "                         "
echo "                         "
echo "                         "
echo "### Installing Apache Ant###"
brew install ant
brew upgrade ant
echo "                         "
echo "                         "
echo "                         "
echo "### Installing Maven ###"
brew install maven
brew upgrade maven
echo "                         "
echo "                         "
echo "                         "
echo "### Installing Gradle ###"
brew install gradle
brew upgrade gradle
echo "                         "
echo "                         "
echo "                         "
echo "### Installing Android SDK ###"
brew cask install android-sdk
brew upgrade android-sdk
echo "                         "
echo "                         "
echo "                         "
echo "### Installing Android NDK ###"
brew cask install android-ndk
brew upgrade android-ndk
echo "                         "
echo "                         "
echo "                         "
echo "### Installing SDK Manager ###"
brew install sdkmanager
brew cask install sdkmanager
brew cask upgrade sdkmanager
echo "                         "
echo "                         "
echo "                         "
echo "### Installing NODE JS ###"
brew install node
brew upgrade node
echo "                         "
echo "                         "
echo "                         "
echo "### Upgrading NPM ###"
npm i -g npm
echo "                         "
echo "                         "
echo "                         "
echo "### Installing APPIUM ###"
npm install -g appium
npm upgrade -g appium
echo "                         "
echo "                         "
echo "                         "
echo "### Setting PATH Env Var ###"
path=$($HOME)
echo $path
echo "                         "
echo "                         "
echo "                         "
echo "### CD'ing to ${path}"
cd $path
echo "                         "
echo "                         "
echo "                         "
echo "### Linking LibiMobileDevice ###"
brew link libimobiledevice
#mkdir appium_android_setup
echo "                         "
echo "                         "
echo "                         "
echo "### CD'ing to /appium_android_setup ###"
cd appium_android_setup
echo "                         "
echo "                         "
echo "                         "
echo "Downloading Android SDK tool ...."
A | curl -O 'https://dl.google.com/android/repository/sdk-tools-darwin-3859397.zip'
#mkdir android
mv sdk-tools-darwin-*.zip android/
cd android
unzip sdk-tools-darwin-*.zip
echo "                         "
echo "                         "
echo "                         "
echo "### Currently In $PWD ###"
echo "Accepting Android SDK licenses"
yes Yes | android update sdk --no-ui
yes Yes | sdkmanager --update
yes Yes | tools/bin/sdkmanager --licenses
echo "                         "
echo "                         "
echo "                         "
echo "Updating the Android sdk manager tool"
yes Yes | tools/bin/sdkmanager --update
echo "                         "
echo "                         "
echo "                         "
echo "Downloading other dependency tools ..."
platform-tools/bin/sdkmanager "platforms;android-25" "build-tools;25.0.2" "extras;google;m2repository" "extras;android;m2repository"
rm sdk-tools-darwin-*.zip
echo "                         "
echo "                         "
echo "                         "
echo "make sure to set below path as ANDROID_HOME"
pwd
echo "                         "
echo "                         "
echo "                         "
echo "### Exportting Env Vars ###"
echo 'export ANT_HOME=/usr/local/opt/ant/libexec' >> ~/.zshrc   
echo 'export MAVEN_HOME=/usr/local/opt/maven' >> ~/.zshrc
echo 'export GRADLE_HOME=/usr/local/opt/gradle' >> ~/.zshrc
echo 'export ANDROID_HOME=/usr/local/opt/android-sdk' >> ~/.zshrc
echo 'export ANDROID_NDK_HOME=/usr/local/share/android-ndk' >> ~/.zshrc
echo 'export ANDROID_SDK_ROOT=/usr/local/share/android-sdk' >> ~/.zshrc
echo 'export PATH=$ANDROID_HOME/build-tools/$(ls $ANDROID_HOME/build-tools | sort | tail -1):$PATH' >> ~/.zshrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.zshrc
echo 'export PATH=$PATH:/usr/local/bin/adb' >> ~/.zshrc
echo 'export ANDROID_HOME=/Users/$USER/your-andorid-sdk-path' >> /.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.zshrc
source ~/.zshrc
echo "                         "
echo "                         "
echo "                         "
echo "### Updating Android SDK"
android update sdk --no-ui
echo "                         "
echo "                         "
echo "                         "
echo "### Installing Android Studio ###"
brew cask install android-studio
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
echo "### Installing Appium Doctor"
npm -g install appium-doctor
npm upgrade -g appium-doctor
appium-doctor --yes --android

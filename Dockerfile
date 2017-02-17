FROM openjdk:8-jdk

ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

RUN apt-get update -y \
  && apt-get install -y wget tar unzip lib32stdc++6 lib32z1 \
  && wget --output-document=android-sdk.zip https://dl.google.com/android/repository/tools_r25.2.5-linux.zip \
  && mkdir /opt/android-sdk-linux \
  && unzip android-sdk.zip -d /opt/android-sdk-linux \
  && echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter android-25 \
  && echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter build-tools-25.0.2 \
  && echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter platform-tools \
  && echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-android-m2repository \
  && echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-google-google_play_services \
  && echo y | android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-google-m2repository

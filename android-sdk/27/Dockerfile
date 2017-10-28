FROM openjdk:8-jdk

ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

RUN wget --quiet --output-document=android-sdk.zip https://dl.google.com/android/repository/tools_r25.2.5-linux.zip \
  && mkdir /opt/android-sdk-linux \
  && unzip android-sdk.zip -d /opt/android-sdk-linux \
  && rm android-sdk.zip \
  && echo y | /opt/android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter android-27 \
  && echo y | /opt/android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter build-tools-27.0.0 \
  && echo y | /opt/android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter platform-tools \
  && echo y | /opt/android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-android-m2repository \
  && echo y | /opt/android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-google-google_play_services \
  && echo y | /opt/android-sdk-linux/tools/android --silent update sdk --no-ui --all --filter extra-google-m2repository
  && echo -e "\n8933bad161af4178b1185d1a37fbf41ea5269c55\nd56f5187479451eabf01fb78af6dfcb131a6481e" > /opt/android-sdk-linux/licenses/android-sdk-license

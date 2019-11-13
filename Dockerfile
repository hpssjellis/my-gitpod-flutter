FROM gitpod/workspace-full:latest

USER root

RUN apt-get update                                                  \
    && apt-get install -y default-jdk                               \
             build-essential clang libdbus-1-dev libgtk-3-dev       \
             libnotify-dev libgnome-keyring-dev libgconf2-dev       \
             libasound2-dev libcap-dev libcups2-dev libxtst-dev     \
             libxss1 libnss3-dev gcc-multilib g++-multilib curl     \
             gperf bison python-dbusmock                            \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*




USER gitpod
  
RUN mkdir -p /home/gitpod/rocksetta                                                                            \ 
    && mkdir -p /home/gitpod/rocksetta/logs                                                                    \ 
    && mkdir -p /home/gitpod/.android                                                                          \
    && mkdir -p /home/gitpod/flutter                                                                          \
    && touch /home/gitpod/.android/repositories.cfg                                                            \
    && touch /home/gitpod/rocksetta/logs/mylogs.txt                                                            \
    && echo "Installation start, made some folders in /home/gitpod" >> /home/gitpod/rocksetta/logs/mylogs.txt  \
    && echo "Try installing cordova, ionic, qrcode, @ionic/lab, cordova-res, native-run  @capacitor/core @capacitor/cli electron electron-packager " >> /home/gitpod/rocksetta/logs/mylogs.txt  \
    && npm install -g cordova ionic qrcode @ionic/lab cordova-res native-run @capacitor/core @capacitor/cli electron  electron-packager                               \
    && echo "Back to root to install the Android sdk" >> /home/gitpod/rocksetta/logs/mylogs.txt                
    







# Give back control
USER root



 ENV ANDROID_SDK_ROOT /home/gitpod/.android
 ENV PATH ${PATH}:${ANDROID_SDK_ROOT}/tools:${ANDROID_SDK_ROOT}/tools/bin:${ANDROID_SDK_ROOT}/platform-tools

WORKDIR /home/gitpod/.android

RUN wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip     \
    && unzip sdk-tools-linux-4333796.zip                                          \                                                             
    && rm sdk-tools-linux-4333796.zip                                             \
    && chmod -R 775 /home/gitpod/.android                                         \
    && chown -R gitpod:gitpod /home/gitpod/.android                               




ENV ANDROID_SDK_ROOT /home/gitpod/flutter

export PATH=${PATH}:/home/gitpod/flutter/bin

WORKDIR /home/gitpod/flutter

RUN wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.9.1+hotfix.6-stable.tar.xzp  \
    && tar xf ~/Downloads/flutter_linux_v1.9.1+hotfix.6-stable.tar.xz                                                     \                                                             
    && rm flutter_linux_v1.9.1+hotfix.6-stable.tar.xzp                                                                    \
    && chmod -R 775 /home/gitpod/flutter                                                                                  \
    && chown -R gitpod:gitpod /home/gitpod/flutter                              


USER gitpod


RUN  echo "Here is the android sdk" >> /home/gitpod/rocksetta/logs/mylogs.txt             \
     && ls -ls /home/gitpod/.android >> /home/gitpod/rocksetta/logs/mylogs.txt            \
     && ls -ls /home/gitpod/flutter  >> /home/gitpod/rocksetta/logs/mylogs.txt            \
     &&  echo "Installation all done" >> /home/gitpod/rocksetta/logs/mylogs.txt          

#RUN sysctl kernel.unprivileged_userns_clone=1

# Give back control
USER root


# Cleaning
RUN apt-get clean

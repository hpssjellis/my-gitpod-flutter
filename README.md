# my-gitpod-flutter


my attempt to get flutter working. This uses a gitpod that is setup for apache cordova, ionic, capacitor, electron mainly because it pre-installs the android sdk.



For a fresh gitpod click (under development Nov 11, 2019, working nov 13th)

https://gitpod.io/#github.com/hpssjellis/my-gitpod-flutter


Or load a pre-made snapshot. May have to enter "N" for None updates

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io#snapshot/c0149a64-6fb6-454b-9648-01adfa0d45ed)






```
flutter create myfolder

cd myfolder

# Generate a Android apk file

flutter build apk  --debug

# Generate a web app

flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0

```


Several bash files have been set up to make things easier. To activate at the terminal type  

```
./a04-flutter-android-create.sh

or

./a05-flutter-web-app.sh


```






.





.






# Old notes that may be useful.



latest nov 14, 2019

```
flutter build apk  --debug

flutter run -d web-server --web-port=8080 --web-hostname=0.0.0.0

```

Official flutter gitpod site at 

https://github.com/vtorres/gitpod-flutter

examples at

https://github.com/gitpod-io/flutter_stock_example



Will need these abilities

bash
curl
git 2.x
mkdir
rm
unzip
which
xz-utils

https://flutter.dev/docs/get-started/install


https://github.com/flutter/flutter



https://blog.khophi.co/setting-up-flutter-for-the-first-time-with-android-sdk/


```
https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.9.1+hotfix.6-stable.tar.xz

 cd ~/development
 tar xf ~/Downloads/flutter_linux_v1.9.1+hotfix.6-stable.tar.xz
 
 
 
  export PATH="$PATH:`pwd`/flutter/bin"
  
   flutter precache
   
   
    flutter doctor
    
    
 ```


other stuff


https://flutter.dev/docs/development/tools/devtools/cli


https://github.com/flutter/flutter/wiki/The-flutter-tool

https://medium.com/flutter-community/flutter-and-the-command-line-a-love-story-a3648ef2411




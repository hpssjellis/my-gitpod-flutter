#!/bin/bash

      #deletes the new java
      export PATH=${PATH/':/home/gitpod/.sdkman/candidates/java/current/bin'/}   

      #sets old java 8 only for present window
      export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64/   
      export PATH=$PATH:$JAVA_HOME        
      echo "$JAVA_HOME"
      java --version
      javac --version

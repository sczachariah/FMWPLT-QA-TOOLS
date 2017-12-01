#!/bin/bash

#java
export JAVA_HOME=/u01/installs/jdk;                  echo "JAVA_HOME    :"  $JAVA_HOME
export JRE_HOME=/u01/installs/jre;                   echo "JRE_HOME     :"  $JRE_HOME
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin;      echo "PATH         :"  $PATH

#ant
export ANT_HOME=/u01/installs/ant;                   echo "ANT_HOME     : "   $ANT_HOME
export PATH=$PATH:$ANT_HOME/bin;                     echo "PATH         : "   $PATH

#maven
export M2_HOME=/u01/installs/maven;                  echo "M2_HOME      : "   $M2_HOME
export M2=/u01/installs/maven/bin;                   echo "M2           : "   $M2
export MAVEN_OPTS="-Xms256m -Xmx512m";               echo "MAVEN_OPTS   : "   $MAVEN_OPTS
export PATH=$PATH:$M2;                               echo "PATH         : "   $PATH

#junit
export JUNIT_HOME=/u01/installs/junit;                echo "JUNIT_HOME  : "   $JUNIT_HOME
export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.12.jar;

#testng
export TESTNG_HOME=/u01/installs/testng;             echo "TESTNG_HOME  : "   $TESTNG_HOME
export CLASSPATH=$CLASSPATH:$TESTNG_HOME/testng-6.8.5.jar;

#gradle
export GRADLE_HOME=/u01/installs/gradle;             echo "GRADLE_HOME  : "   $GRADLE_HOME
export PATH=$PATH:$GRADLE_HOME/bin;                  echo "PATH         : "   $PATH

#groovy
export GROOVY_HOME=/u01/installs/groovy;             echo "GROOVY_HOME  : "   $GROOVY_HOME
export PATH=$PATH:$GROOVY_HOME/bin;                  echo "PATH         : "   $PATH

#go
export GOROOT=/u01/installs;                         echo "GOROOT       : "   $GOROOT
export GOPATH=$GOROOT/go;                            echo "GOPATH       : "   $GOPATH
export GOBIN=$GOPATH/bin;                            echo "GOBIN        : "   $GOBIN
export PATH=$PATH:$GOPATH:$GOBIN;                    echo "PATH         : "   $PATH

echo "--------------------------------------------------------"
echo $PATH
echo "--------------------------------------------------------"
java -version
echo "--------------------------------------------------------"
ant -version
echo "--------------------------------------------------------"
mvn -version
echo "--------------------------------------------------------"
python --version
echo "--------------------------------------------------------"
git --version
echo "--------------------------------------------------------"
gradle -v
echo "--------------------------------------------------------"
groovy -version
echo "--------------------------------------------------------"
go version
echo "--------------------------------------------------------"

touch wait.log
tail -f wait.log
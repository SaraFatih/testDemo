FROM ubuntu:latest
RUN apt-get update && apt-get -y install software-properties-common && add-apt-repository -y ppa:webupd8team/java && echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && apt-get update && apt-get -y install oracle-java8-installer && apt-get install -y git 
WORKDIR /testDemo
ADD . .
CMD javac Min.java ; javac -cp .:junit-4.12.jar:hamcrest-core-1.3.jar MinTest.java ; java -cp .:junit-4.12.jar:hamcrest-core-1.3.jar org.junit.runner.JUnitCore MinTest

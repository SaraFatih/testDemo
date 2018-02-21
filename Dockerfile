FROM ubuntu:latest
RUN apt-get update && apt-get -y install software-properties-common && add-apt-repository -y ppa:webupd8team/java && echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && apt-get update && apt-get -y install oracle-java8-installer && apt-get install -y git && git clone https://github.com/SaraFatih/testDemo.git
CMD javac ./testDemo/Min.java ; javac -cp .:./testDemo/junit-4.12.jar:./testDemo/hamcrest-core-1.3.jar ./testDemo/MinTest.java ; java -cp .:./testDemo/junit-4.12.jar:./testDemo/hamcrest-core-1.3.jar org.junit.runner.JUnitCore ./testDemo/MinTest


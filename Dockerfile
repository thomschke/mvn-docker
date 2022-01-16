FROM maven:3.8.4-jdk-8

RUN git clone https://github.com/thomschke/mvn-parent.git

RUN cd mvn-parent && mvn install

RUN git clone https://github.com/thomschke/mvn.git

RUN cd mvn && mvn install

RUN sed -ir 's|7.2.0|7.2.2|' mvn/.mvn/extensions.xml

RUN cd mvn && mvn install

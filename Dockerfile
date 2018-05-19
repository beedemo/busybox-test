FROM busybox:1.28.3

ENV HOME /home/jenkins
RUN addgroup -g 10000 jenkins
RUN adduser -h $HOME -u 10000 -G 10000 jenkins

USER jenkins
RUN mkdir /home/jenkins/.jenkins

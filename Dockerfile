FROM busybox:1.28.3

ENV HOME /home/jenkins
RUN addgroup -g 10000 jenkins
RUN adduser -D -g '' -h $HOME -u 10000 -G jenkins jenkins

RUN mkdir /home/jenkins/.test
RUN chown jenkins:jenkins /home/jenkins/.test
USER jenkins



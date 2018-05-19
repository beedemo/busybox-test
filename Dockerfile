FROM busybox:1.28.3

ENV HOME /home/jenkins
RUN groupadd -g 10000 jenkins
RUN useradd -c "Jenkins user" -d $HOME -u 10000 -g 10000 -m jenkins

USER jenkins
RUN mkdir /home/jenkins/.jenkins

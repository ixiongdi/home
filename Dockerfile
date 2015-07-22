FROM ubuntu:14.04
RUN sudo apt-get install curl openssh-server ca-certificates postfix
RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
RUN sudo apt-get install gitlab-ce
RUN sudo gitlab-ctl reconfigure

FROM centos:7

RUN yum -y install git
RUN curl -sL https://rpm.nodesource.com/setup_8.x | /bin/bash -
RUN yum -y install nodejs
RUN npm install -g @angular/cli
RUN cd /home && mkdir application

WORKDIR /home/application

EXPOSE 4200

CMD ng serve --host 0.0.0.0

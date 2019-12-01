ARG version=7
ARG user=apachi
# pass these arguments from cmd line like docker build --build-arg VERSION= , user

FROM centos:${version}

RUN yum -y install httpd unzip

LABEL maintainer="Abid Malik"

ENV THEME onepage-html-template

WORKDIR /var/www/html

ADD https://github.com/abidmunirmalik/${THEME}/archive/master.zip ./code.zip

RUN unzip code.zip && mv ${THEME}-master/* . \ 
    && chown -R apache:apache /var/www/html
 
USER ${user} 

RUN rm -f code.zip && rmdir ${THEME}-master

#COPY html-code /var/www/html

USER root

COPY start.sh /start.sh

RUN chmod u+x /start.sh

CMD /start.sh

#CMD apachectl -DFOREGROUND


####################################################
#Dockerfile to build Apache2 Installed containers
#Based on Ubuntu
####################################################

# Set the base image to Ubuntu
From ubuntu:12.04

# File Author/ Maintainer
MAINTAINER Tirumal <itsme3mul@gmail.com>

# Updat the repository 
RUN apt-get update

#Download and install Apache2
RUN apt-get install -y apache2

#Setting up the Environment Variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

#Set the volume
VOLUME /var/www

#Set the port
EXPOSE 80

#Set the entry point for the apache
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]

FROM ubuntu
# Update the repository sources list
RUN apt-get update

# Install and run apache
RUN apt-get install -y apache2 && apt-get clean
# Install and run net-tools to show ip of container through web page 
RUN apt install net-tools -y
RUN ifconfig > /var/www/html/index.html
#ENTRYPOINT ["/usr/sbin/apache2", "-k", "start"]


#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

#EXPOSE 80
CMD apachectl -D FOREGROUND

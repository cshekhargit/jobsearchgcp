# By Chandra Shekhar for GCP Micro services demo

# https://docs.docker.com/engine/reference/builder/

# base this image on the alpine httpd (your apache)
FROM httpd:alpine

# clean up
#RUN apt-get update \
#  && apt-get clean 

# take the contents of the local html/ folder, and copy to /var/www/html/ inside the container
# this is the expected web root of the default website for this server, so put your index.php here
#COPY src/ /var/www/html/
 COPY src/ /usr/local/apache2/htdocs/

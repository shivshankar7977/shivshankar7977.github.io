# Use an official Apache HTTP Server image as the base image
FROM httpd:2.4

# Copy your index.html file to the Apache document root
COPY ./index.html /usr/local/apache2/htdocs/

# Copy all CSS files to a "css" directory in the Apache document root
COPY ./style.css /usr/local/apache2/htdocs/css/
COPY ./utilities.css /usr/local/apache2/htdocs/css/

# Copy all image files to an "images" directory in the Apache document root
COPY ./images/ /usr/local/apache2/htdocs/images/

CMD ["httpd-foreground"]
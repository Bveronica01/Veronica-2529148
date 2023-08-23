FROM httpd
RUN rm -f /usr/local/apache2/htdocs/index.html
RUN mkdir /veronica-2529148
RUN chmod 777 /veronica-2529148
COPY recursos/img4.jpg /veronica-2529148
COPY main.sh /veronica-2529148
RUN chmod +x /veronica-2529148
RUN sh /veronica-2529148/main.sh
COPY 4/template4/* /usr/local/apache2/htdocs/
CMD ["httpd-foreground"]
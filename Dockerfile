FROM httpd:2.4-alpine

RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf
RUN ln -s /opt/ormal/semantic_ui/dist /usr/local/apache2/htdocs/assets

RUN apk add --update nodejs npm
RUN npm install -g gulp
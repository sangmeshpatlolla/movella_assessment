FROM nginx:latest
RUN apt-get update && apt-get install -y wget
RUN rm -f /usr/share/nginx/html/* \   
    && wget -O abs-guide.html.tar.gz https://tldp.org/LDP/abs/abs-guide.html.tar.gz \
    && tar -xzf abs-guide.html.tar.gz --strip-components 1 -C /usr/share/nginx/html/ \
    && rm -f abs-guide.html.tar.gz 
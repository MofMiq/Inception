FROM debian:bullseye AS build-cert

RUN apt-get update && apt-get install -y openssl

run mkdir /certs

run openssl req -subj "/C=SP/ST=Malaga/L=Malaga/O=42 Malaga/OU=marirodr/CN=marirodr" -new -newkey rsa:2048 -days 365 -nodes -x509  -keyout /certs/marirodr.42.fr.key -out /certs/marirodr.42.fr.crt

FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx

COPY ./requirements/nginx/conf/nginx.conf /etc/nginx/sites-available/default

COPY --from=build-cert /certs /etc/nginx/ssl

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]


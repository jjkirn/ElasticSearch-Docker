docker run -d -p 8080:80 --link logstash:logstash -v /docker_nginx:/var/log/nginx -v /docker_syslog:/var/log/syslog nginx_image

docker run -d -p 8081:80 --link logstash:logstash -v /docker_nginx:/var/log/nginx -v /docker_syslog:/var/log/syslog nginx_image

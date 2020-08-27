docker run --name nginx -d -p 80:80 --link logstash:logstash -v /docker_nginx:/var/log/nginx -v /docker_syslog:/var/log/syslog nginx_image

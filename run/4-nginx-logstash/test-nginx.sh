# Use this to create NGINX container for debugging - use attach-nginx.sh after container loads to get an interactive shell
docker run -it --entrypoint /bin/bash --name nginx -d -p 80:80 --link logstash:logstash -v /docker_nginx:/var/log/nginx -v /docker_syslog:/var/log/syslog nginx_image -s

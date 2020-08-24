# Use this to create a Kibana container for debugging - use attach-kibana.sh after container loads to get an interactive shell
docker run -it --entrypoint /bin/bash --name kibana --link es:es -d -p 5601:5601 --link es:es kibana_image -s

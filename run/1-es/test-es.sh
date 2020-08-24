# Use this to create Elasticsearch container for debugging - use attach-es.sh after container loads to get an interactive shell
docker run -it --entrypoint /bin/bash --user esuser --name es -d -v /data:/home/esuser/data es_image -s

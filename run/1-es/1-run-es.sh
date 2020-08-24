# Booting the ELK stack - Step 1: run elasticsearch with storage on the host, assumes you created /data with write permissions on the host
docker run --user esuser --name es -d -v /data:/home/esuser/data es_image

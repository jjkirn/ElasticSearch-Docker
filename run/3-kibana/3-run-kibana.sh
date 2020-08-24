docker run --name kibana --link es:es -d -p 5601:5601 --link es:es kibana_image

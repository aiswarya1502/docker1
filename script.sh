yum install -y docker
systemctl start docker
docker run -itd --name u1 ubuntu
docker exec -it u1 apt-get update -y
docker exec -it u1 apt-get install -y apache2 curl net-tools
docker exec -it u1 service apache2 start
docker exec  u1 bash -c "echo 'Hello World' > /var/www/html/index.html"
docker exec -it u1 cat  /var/www/html/index.html

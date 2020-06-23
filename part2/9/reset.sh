echo "=========================== Stopping all Docker containers ==========================="
sudo docker container stop $(sudo docker container ls -aq)
echo "=========================== Removing all stopped containers ==========================="
sudo docker container rm $(sudo docker container ls -aq)
echo "All containers removed..."
echo "=========================== Removing all images ==========================="
sudo docker rmi $(sudo docker images -a -q)
echo "=========================== Removing current database data ==========================="
sudo rm -r ./db-data
echo "=========================== Running Docker Compose ==========================="
sudo docker-compose up

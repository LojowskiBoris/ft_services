sudo docker-compose -f docker-compose.yml down
sudo docker rmi -f $(sudo docker images -qa)
sudo docker rm -f $(sudo docker ps -qa)
sudo docker rm -f $(sudo docker ps -ls)
sudo docker volume rm $(sudo docker volume ls -q)
sudo docker system prune -af --volumes
#sudo docker system prune -af
sudo rm -Rf ../../data/mariadb
sudo rm -Rf ../../data/wordpress
sudo mkdir ../../data/mariadb
sudo mkdir ../../data/wordpress

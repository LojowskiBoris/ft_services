docker stop $(sudo docker ps -qa) 2> /dev/null
docker rm $(sudo docker ps -qa) 2> /dev/null
docker rmi -f $(sudo docker images -qa) 2> /dev/null
docker volume rm $(sudo docker volume ls -q) 2> /dev/null
docker network rm $(sudo docker network ls -q) 2> /dev/null
sudo docker system prune -af --volumes

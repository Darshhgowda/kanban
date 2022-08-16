#/bin/bash
sudo rm -rf kanbanec2/
#sudo docker stack rm  chandan
#docker rmi $(docker images -a -q) --force

repository="https://github.com/Chandangowdashankar/kanbanec2.git"
git clone $repository""
cd kanbanec2
docker-compose build
docker-compose push
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy --compose-file docker-compose.yml chandan


#this file need to run the all the process of docker stack deploy without downtime (blue green deployment)

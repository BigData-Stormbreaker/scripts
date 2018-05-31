sudo docker network create --driver bridge mjolnir_network

sudo docker volume create hdfsvolume

sudo docker run -t -i -p 50075:50075 -p 50061:50060 -d --network=mjolnir_network --name=slave1 matnar/hadoop
sudo docker run -t -i -p 50076:50075 -p 50062:50060 -d --network=mjolnir_network --name=slave2 matnar/hadoop
sudo docker run -t -i -p 50077:50075 -p 50063:50060 -d --network=mjolnir_network --name=slave3 matnar/hadoop
sudo docker run -t -i -p 50070:50070 -p 50060:50060 -p 50030:50030 -p 8088:8088 -p 19888:19888 -p 54310:54310 --network=mjolnir_network --name=master -v $PWD/nifi/:/data -v hdfsvolume:/usr/local/hadoop matnar/hadoop

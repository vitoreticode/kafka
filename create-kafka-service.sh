# Create the Kafka Service File
sudo vim /etc/init.d/kafka

# Insert the Following Contents into the kafka File
kafka-file.sh

# Change the Properties of the File and Start the Service
sudo chmod +x /etc/init.d/kafka

sudo chown root:root /etc/init.d/kafka

sudo update-rc.d kafka defaults

sudo service kafka start

# Stop the kafka and zookeeper Services on Each Server
sudo service zookeeper stop

sudo service kafka stop

# Create the logs Directory for the Kafka Service
sudo mkdir -p /data/kafka

sudo chown -R cloud_user:cloud_user /data/kafka

# Create the server.properties File
rm config/server.properties

vim config/server.properties

# Add the Following Contents to the server.properties File
server.properties.sh

# Add the Following to /etc/hosts
[server1_private_ip]  kafka1
[server1_private_ip]  zookeeper1
[server2_private_ip]  kafka2
[server2_private_ip]  zookeeper2
[server3_private_ip]  kafka3
[server3_private_ip]  zookeeper3

# Create the logs Directory and myid File for the Zookeeper Service
sudo mkdir -p /data/zookeeper
sudo chown -R cloud_user:cloud_user /data/zookeeper
echo "1" > /data/zookeeper/myid
echo "2" > /data/zookeeper/myid
echo "3" > /data/zookeeper/myid

# Create the zookeeper.properties File
rm /home/cloud_user/kafka/config/zookeeper.properties
vim /home/cloud_user/kafka/config/zookeeper.properties

# Add the Following Contents to the zookeeper.properties File
# the directory where the snapshot is stored.
dataDir=/data/zookeeper
# the port at which the clients will connect
clientPort=2181
# setting number of connections to unlimited
maxClientCnxns=0
# keeps a hearbeat of zookeeper in milliseconds
tickTime=2000
# time for inital synchronization
initLimit=10
# how many ticks can pass before timeout
syncLimit=5
# define servers ip and internal ports to zookeeper
server.1=zookeeper1:2888:3888
server.2=zookeeper2:2888:3888
server.3=zookeeper3:2888:3888


# Start the Zookeeper and Kafka Services on Each Server
sudo service zookeeper start
sudo service kafka start

# Create Your First Topic in Your New Kafka Cluster
./bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --create --topic test --replication-factor 1 --partitions 3
./bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --topic test --describe



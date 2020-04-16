# Download the Binaries, and Change the Name of the Directory

wget http://mirror.cogentco.com/pub/apache/kafka/2.2.0/kafka_2.12-2.2.0.tgz

tar -xvf kafka_2.12-2.2.0.tgz

mv kafka_2.12-2.2.0 kafka

cd kafka

# Install Java
sudo apt install -y default-jdk

java -version

# Disable RAM Swap
swapoff -a

sudo sed -i '/ swap / s/^/#/' /etc/fstab

# Create the Zookeeper Service File
sudo vim /etc/init.d/zookeeper
zookeeper-file.sh

# Change the File's Permissions and Start the Service 
sudo chmod +x /etc/init.d/zookeeper
sudo chown root:root /etc/init.d/zookeeper

sudo update-rc.d zookeeper defaults

sudo service zookeeper start
sudo service zookeeper status

# Detail for the topics command
bin/kafka-topics.sh

# Creating a topic will all the required arguments
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --topic test1 --create --partitions 3 --replication-factor 3

# Creating a topic including all of the zookeeper servers (not required)
bin/kafka-topics.sh --zookeeper zookeeper1:2181,zookeeper2:2181,zookeeper3:2181/kafka --topic test1 --create --partitions 3 --replication-factor 3

# List all topics
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --list

# Describing a topic
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --topic test2 --describe

# Delete a topic
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --topic test2 --delete

# Detail for the producer command
bin/kafka-console-producer.sh

# Detail for the consumer command
bin/kafka-console-consumer.sh

# Detail for the consumer groups command
bin/kafka-consumer-groups.sh

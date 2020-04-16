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

# Start a console producer to topic 'test'
bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic test

# Add the acks=all flag to your producer
bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic test --producer-property acks=all

# Create a topic with the console producer (not recommended)
bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic test4

# List the newly created topic
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --list

# View the partitions for a topic
bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --topic test5 --describe

# Start a console consumer to a topic
bin/kafka-console-consumer.sh --bootstrap-server kafka3:9092 --topic test

# Consuming messages from the beginning
bin/kafka-console-consumer.sh --bootstrap-server kafka3:9092 --topic test --from-beginning

#Start a consumer group for a topic
bin/kafka-console-consumer.sh --bootstrap-server kafka3:9092 --topic test --group application1

# Start producing new messages to a topic
bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic test

# Start a consumer group and read messages from the beginning
bin/kafka-console-consumer.sh --bootstrap-server kafka3:9092 --topic test --group application1 --from-beginning

# List the consumer groups
bin/kafka-consumer-groups.sh --bootstrap-server kafka3:9092 --list

# Describe a consumer group
bin/kafka-consumer-groups.sh --bootstrap-server kafka3:9092 --describe --group application1

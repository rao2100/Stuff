#!/bin/sh
KAFKA_PATH=/home/openet/Programs/kafka_2.11-0.9.0.0/bin
$KAFKA_PATH/kafka-console-producer.sh --broker-list localhost:9092 --topic com.openet.autoscaling.train < ./AutoScaleTrainvdu1.json


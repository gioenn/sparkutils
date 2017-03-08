#!/bin/bash 

rm -rf /var/lib/hadoop/hdfs/datanode/*
rm -rf /var/lib/hadoop/hdfs/namenode/*
hdfs namenode -format

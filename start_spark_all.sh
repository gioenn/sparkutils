#!/bin/bash 

$SPARK_HOME/sbin/start-master.sh  -h $SPARK_MASTER
$SPARK_HOME/sbin/start-history-server.sh
$SPARK_HOME/sbin/start-slave.sh  $SPARK_MASTER:7077 --port 9999

#!/bin/bash 

/usr/local/spark/sbin/start-master.sh  -h samver3.dei.polimi.it
/usr/local/spark/sbin/start-history-server.sh
/usr/local/spark/sbin/start-slave.sh  samver3.dei.polimi.it:7077 --port 9999

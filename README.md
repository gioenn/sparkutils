# sparkutils

## Requirements

- Java
- Scala 2.11
- Maven
- Git
- Spark 2.1
- Hadoop 2.7.2
- Openvpn and vpn certificates

## Deploy HDFS and Spark clusters

Given a cluster composed by one master and a number of slaves, this procedure will deploy Spark and HDFS masters on the master machine and corrisponding workers and datanodes on the slave machines.

####Step 1 @[everywhere]
```
export VPN_HOME=<folder with vpn certificates>
export SPARK_HOME=<Spark folder>
export HADOOP_HOME=<Hadoop folder>
export SPARK_MASTER=<IP address of Spark master>
```

####Step 2 @[master machine]

```
./stop_spark_all.sh
./stop_hdfs_all_via_vpn.sh
sudo service openvpn restart
```

####Step 3 @[slave machines]

```
./stop_vpn.sh
./start_vpn.sh
```

####Step 4 @[everywhere]
```
./format_hdfs.sh
```

####Step 5 @[master machine]
```
./start_hdfs_all_via_vpn.sh
./start_spark_all.sh
```

####Step 6 @[slave machine]
```
./start_spark_slave.sh
```






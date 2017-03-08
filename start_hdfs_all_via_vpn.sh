#!/bin/bash
/usr/local/lib/hadoop-2.7.2/sbin/start-dfs.sh
/usr/local/lib/hadoop-2.7.2/bin/hdfs dfsadmin -safemode leave

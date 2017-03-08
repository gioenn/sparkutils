#!/bin/bash


cd $SPARK_HOME
git pull 
build/mvn clean
build/mvn -T 1C -Phive -Pnetlib-lgpl -Pyarn -Phadoop-2.7 -Dhadoop.version=2.7.2 -Dscala-2.11 -DskipTests -Dmaven.test.skip=true package

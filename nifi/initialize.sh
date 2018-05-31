rm $HADOOP_HOME/etc/hadoop/hdfs-site.xml
cp /data/hdfs-site.xml $HADOOP_HOME/etc/hadoop/hdfs-site.xml

$HADOOP_HOME/bin/hdfs namenode -format && $HADOOP_HOME/sbin/start-dfs.sh && $HADOOP_HOME/bin/hdfs dfs -put /data/schema.avsc /schema.avsc


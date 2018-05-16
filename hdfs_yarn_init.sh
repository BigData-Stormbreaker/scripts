########################################################## 
#		HADOOP (2.7.6) + YARN + SPARK stack 	         #
#		 	  initialization script	                     #
##########################################################

# setup your hadoop installation directory
export HADOOP_PREFIX="/path/to/hadoop/installation/folder"
export HADOOP_HOME=$HADOOP_PREFIX
export HADOOP_COMMON_HOME=$HADOOP_PREFIX
export HADOOP_HDFS_HOME=$HADOOP_PREFIX
export HADOOP_MAPRED_HOME=$HADOOP_PREFIX
# settings necessary to run Spark atop of YARN
export HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
export HADOOP_YARN_HOME=$HADOOP_PREFIX
# setup your java home directory
export JAVA_HOME="/path/to/jdk/home"

# moving custom configuration files
mv ./hdfs-site.xml $HADOOP_CONF_DIR/hdfs-site.xml
mv ./core-site.xml $HADOOP_CONF_DIR/core-site.xml
mv ./yarn-site.xml $HADOOP_CONF_DIR/yarn-site.xml

# replacing hadoop config script with a fixed version (macOS users)
mv ./hadoop-config.sh $HADOOP_PREFIX/libexec/hadoop-config.sh

# format the namenode directory (UNCOMMENT ONLY IF THE FIRST TIME)
# $HADOOP_PREFIX/bin/hdfs namenode -format

# starting Hadoop stack cluster - default -> (namenode, datanode, resource_manager, node_manager)
$HADOOP_PREFIX/sbin/hadoop-daemon.sh start namenode
$HADOOP_PREFIX/sbin/hadoop-daemon.sh start datanode
$HADOOP_PREFIX/sbin/yarn-daemon.sh start resourcemanager
$HADOOP_PREFIX/sbin/yarn-daemon.sh start nodemanager
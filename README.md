# Mjolnir Stack Scripts
## HDFS + YARN + Spark Stack initialization
To start cluster (HDFS + YARN + Spark), run the 'hdfs_yarn_init.sh' script from the phase1 folder.

## Apache NiFi configuration
Start a NiFi Instance with the flow.xml.gz file given.
Set the global variables for:
+ *spooldir*: where to pull the .csv file
+ *hadoophome*: the hadoop home path
+ *avroschema*: the path of the avro schema on hadoop

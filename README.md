# Mjolnir Stack Scripts
## Phase 1
To start phase1 cluster (HDFS + YARN + Spark), run the 'hdfs_yarn_init.sh' script from the phase1 folder.

Start a NiFi Instance with the flow.xml.gz file given.
Set the global variables for:
	- spooldir: where to pull the .csv file
	- hadoophome: the hadoop home path
	- avroschema: the path of the avro schema on hadoop

# Mjolnir Stack Scripts
## HDFS + YARN + Spark Stack initialization
To start cluster (HDFS + YARN + Spark), run the 'hdfs_yarn_init.sh' script from the phase1 folder.

## Ingestion and HDFS (alternative)
Exec the hdfs-start.sh script in order to prepare HDFS.

When the containers start, exec the initialize.sh script that you will find in the /data/ folder.

DO NOT CLOSE THE BASH FOR THE CONTAINER OR IT WILL BE STOPPED.

Exec the nifi-start.sh script from the local system. Insert the d14_filtered.csv file inside the /nifi/spooldir directory so that NiFi can start ingest the data.



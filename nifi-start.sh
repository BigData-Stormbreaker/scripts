sudo docker run --name nifi -v $PWD/nifi/spooldir/:/spooldir/ -v $PWD/nifi/nificonf/:/opt/nifi/nifi-1.6.0/conf -v hdfsvolume:/hadoophome -p 8080:8080 --network=mjolnir_network apache/nifi

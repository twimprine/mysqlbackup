
# Backup All MySql/MariaDB Databases on the System

I needed a simple script to execute from crontab that would dump the databases to an NFS share. We are using Veeam to backup the operating systems, however there is no gaurantee of a consistant DB backup unless Veeam has a hook into the database (agents). We do not have any licensed agents so I needed to make sure we could recover in case of a failure and the database wasn't in a consistant state. 

After we have four weeks of backups, as defined by the RETENTIONDAYS variable, it will remove any files that are older than that number of days. 

Simple script just to get the job done. 

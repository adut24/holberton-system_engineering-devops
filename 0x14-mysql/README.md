# 0x14. MySQL

## [4-mysql_configuration_primary](./4-mysql_configuration_primary), [4-mysql_configuration_replica](./4-mysql_configuration_replica)
- MySQL primary must be hosted on `web-01` - do not use the `bind-address`, just comment out this parameter
- MySQL replica must be hosted on `web-02`
- Setup replication for the MySQL database named `tyrell_corp`
- Provide your MySQL primary configuration as answer file(`my.cnf` or `mysqld.cnf`) with the name `4-mysql_configuration_primary`
- Provide your MySQL replica configuration as an answer file with the name `4-mysql_configuration_replica`

Tips:
- Once MySQL replication is setup, add a new record in your table via MySQL on `web-01` and check if the record has been replicated in MySQL `web-02`. If you see it, it means your replication is working!
- **Make sure that UFW is allowing connections on port 3306 (default MySQL port) otherwise replication will not work.**

## [5-mysql_backup](./5-mysql_backup)
What if the data center where both your primary and replica database servers are hosted are down because of a power outage or even worse: flooding, fire? Then all your data would inaccessible or lost. That’s why you want to backup and store them in a different system in another physical location. This can be achieved by dumping your MySQL data, compressing them and storing them in a different data center.

Write a Bash script that generates a MySQL dump and creates a compressed archive out of it.

Requirements:
- The MySQL dump must contain all your MySQL databases
- The MySQL dump must be named `backup.sql`
- The MySQL dump file has to be compressed to a `tar.gz` archive
- This archive must have the following name format: `day-month-year.tar.gz`
- The user to connect to the MySQL database must be `root`
- The Bash script accepts one argument that is the password used to connect to the MySQL database

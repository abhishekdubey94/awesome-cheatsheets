
# *****************************************************************************
# SETUP HELPING LINKS
# https://wiki.postgresql.org/wiki/Apt
# https://geospatial.commons.gc.cuny.edu/2014/10/25/installing-postgresqlpostgis-on-linux-mint-17/
# *****************************************************************************
# *****************************************************************************
# BASICS
# *****************************************************************************

# Install the psql
# Create a new user 
	adduser postgres
# Create a directory for data_directory. 
	mkdir /data/pg_data
# Update this data directory in config file (config_file=/etc/postgresql/9.3/main/postgresql.conf).

# change the owner of the data file   
	chown postgres /data/pg_data
# start the user postgres  
    su - postgres
# All the commands are present in 
    cd /usr/lib/postgresql/9.3/bin
# Initialise the db 
	./initdb -D /data/pg_data
# Start the server 
	./postgres -D /data/pg_data >logfile 2>&1 &
# Create the db 
	./createdb test
# psql shell 
	./psql test

# When it's first installed, PostgreSQL just has the 'postgres' user, 
# and the way to initially enter PostgreSQL is by typing  

 sudo su - postgres 

# and then 

 psql

# After creating the 'test' database, we can create a user with the same name as our current logged in user, to be a database administrator
# This way we can just type in psql 'test'  from the command line and enter the database without the need of logging in as the 'postgres' user. This can be done with CREATE USER your-user-name-here WITH SUPERUSER; , and we can verify that he was created with \du . 
# Now we can exit by typing \q  and then exit.

# test=# CREATE USER your-user-name-here WITH SUPERUSER;

# test=# \du //for getting the user
# test=# \q  //for quitting

# Lastly, with pgAdmin4 we need to create a connection with the server the first time we use it, 
# and this is done by right-clicking 'Servers' on the left pane, and choosing 'Create' > 'Server'. 
# We give our server a name, and in the 'Connection' tab we type in 'localhost' as the host and save.

# SQL Commands
# CREATE TABLE table_name (column1 dataType,column2 dataType);
# INSERT INTO table_name (column1,column2) VALUES (value1,value2);
# SELECT * FROM table_name;
# ALTER TABLE table_name ADD columnName dataType;
# UPDATE table_name SET columnName = someValue WHERE otherColumnName = someOtherValue;



# *****************************************************************************
# SETUP HELPING LINKS
# https://wiki.postgresql.org/wiki/Apt
# https://geospatial.commons.gc.cuny.edu/2014/10/25/installing-postgresqlpostgis-on-linux-mint-17/
# *****************************************************************************
# *****************************************************************************
# BASICS
# *****************************************************************************

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

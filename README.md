# README

#### Create catpi_api role

```
sudo -u postgres psql
create role catpi_api with createdb login password 'apasswordhere';
\q
```

#### Create the environment variable

```
CATPI_API_DATABASE_PASSWORD='apasswordhere'
export CATPI_API_DATABASE_PASSWORD
printenv CATPI_API_DATABASE_PASSWORD
```

#### Create db schema

```
# rails db:migrate or rake db:drop db:create db:migrate if having issues
rake db:reset db:migrate
```
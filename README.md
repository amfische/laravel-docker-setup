# laravel-docker-setup

- https://www.digitalocean.com/community/tutorials/how-to-install-and-set-up-laravel-with-docker-compose-on-ubuntu-20-04

### xdebug
- https://github.com/docker/for-win/issues/9306
- https://stackoverflow.com/questions/49677199/how-do-i-get-xdebug-step-debugging-working-with-ddev

### permissions
 - https://vsupalov.com/docker-shared-permissions/

### tar files
 - https://wiki.haskell.org/How_to_unpack_a_tar_file_in_Windows

### seeding db from zipped tar
 - `make dbcreate`
 - `docker-compose exec db bash`
 - Unzip first
   - `cd /seed && gzip -d report.sql.gz`
   - `mysql -uroot -p app < report.sql`
 - One-liner
   - `zcat report.sql.gz | mysql -uroot -p app`
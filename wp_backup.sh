#!/bin/bash
NOW=$(date +"%Y%m%d%H%M")
FILE="wp_backup_$NOW.tar.gz"
DB_FILE="wp_backup_.$NOW.sql"
BACKUP_DIR="."

mysqldump wp > $BACKUP_DIR/$DB_FILE
tar czf $BACKUP_DIR/$FILE /var/www/wp/


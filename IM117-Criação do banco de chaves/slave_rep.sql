CHANGE MASTER TO
    MASTER_HOST='master_host',
    MASTER_USER='repl_user',
    MASTER_PASSWORD='password',
    MASTER_LOG_FILE='log_file',
    MASTER_LOG_POS=log_pos;

START SLAVE;
#SHOW SLAVE STATUS\G

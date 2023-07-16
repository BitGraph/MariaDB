# https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql
# https://ikasten.io/2017/01/08/whats-the-default-password-of-root-user-in-mariadb/

# Login without password
sudo mysql -u root

CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';

# Grant Permission
GRANT ALL PRIVILEGES ON *.* TO 'user1'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

# Test new user
sudo mysql -u user1 -p

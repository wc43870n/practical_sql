#   EDIT THIS FILE BEFORE USAGE
#   Creates a MySQL user with a password and permissions required by scripts


GRANT ALL ON *.* TO '[USER NAME]'@'localhost' IDENTIFIED BY '[PASSWORD]';

#   USAGE
#   run from command line as follows:
#       mysql -u root -p < create_gordon 
#       - when prompted for MySQL root password, hit enter key
#           - unless that password has been set -- but the default is empty


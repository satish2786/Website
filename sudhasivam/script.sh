#!/bin/bash

# The 3 variables below store server and login details
HOST="ftpupload.net"
USER="epiz_29032302"
PASSWORD="7qkp0896zsLf8"


# $1 is the first argument to the script
# We are using it as upload directory path
# If it is '.', file is uploaded to current directory.
DESTINATION=$1


# Rest of the arguments are a list of files to be uploaded.
# ${@:2} is an array of arguments without first one.
ALL_FILES="${@:2}"


# FTP login and upload is explained in paragraph below
ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd $DESTINATION
mput $ALL_FILES
bye
EOF
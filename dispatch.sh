source common.sh
component=dispatch


PRINT Install Golang
dnf install golang -y &>>$LOG_FILE
STAT $?

APP_PREREQ


PRINT Downloading dependencies and Build 
cd /app   &>>$LOG_FILE
go mod init dispatch &>>$LOG_FILE
go get  &>>$LOG_FILE
go build &>>$LOG_FILE
STAT $?

SYSTEMD_SETUP

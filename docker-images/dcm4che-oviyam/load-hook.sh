#!/bin/sh

FILE=/usr/local/tomcat/ALREADY_RUN
CONFIG_FILE=/tmp/conf/oviyam2-7-config.xml

if test -f "$FILE"; then
    echo "Nothing to do - already run before"
    exit 0;
fi

cd /usr/local/tomcat/webapps/
mkdir ROOT
mv ROOT.war ROOT/
cd ROOT
unzip ROOT.war

if test -f "$CONFIG_FILE"; then
    echo "Copying " $CONFIG_FILE " to ROOT webapp"
    cp $CONFIG_FILE /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/conf/oviyam2-7-config.xml
fi

touch $FILE

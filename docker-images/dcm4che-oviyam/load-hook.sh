#!/bin/sh

FILE=/usr/local/tomcat/ALREADY_RUN

if test -f "$FILE"; then
    echo "Nothing to do - already run before"
    exit 0;
fi

cd /usr/local/tomcat/webapps/
mkdir ROOT
mv ROOT.war ROOT/
cd ROOT
unzip ROOT.war
cp /tmp/conf/oviyam2-7-config.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/conf/oviyam2-7-config.xml

touch $FILE

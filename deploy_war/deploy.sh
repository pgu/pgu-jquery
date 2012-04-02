#!/bin/bash

TOM="${HOME}/bin/tomcat/apache-tomcat-7.0.26"

fuser 8080/tcp
if [ 0 -eq $? ] 
then
    echo shutdown tomcat
    "${TOM}"/bin/shutdown.sh
    sleep 2
fi

cd ${HOME}/bin/workspace_wikeo/pgu-jquery/WebContent/

if [ -f pgu-jquery.war ]
then
    echo rm war
    rm pgu-jquery.war
fi

echo generate war
jar cf pgu-jquery.war .

echo remove old war
rm -r "${TOM}/webapps/pgu-jquery/"
rm "${TOM}/webapps/pgu-jquery.war"
rm -r "${TOM}/work/*"
rm -r "${TOM}/logs/*"

echo copy war to tomcat
mv pgu-jquery.war ${TOM}/webapps/

echo start tomcat
"${TOM}"/bin/startup.sh
sleep 3

echo web page
gnome-open http://localhost:8080/pgu-jquery/ &


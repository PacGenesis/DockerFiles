#!/bin/bash
/opt/IBM/UCRelease/server/server.startup
sleep 1
tail -f /opt/IBM/UCRelease/server/tomcat/logs/catalina.out

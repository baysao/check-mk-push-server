#!/bin/sh
export TOKEN_FILE=/root/check_mk_push_agent_server/tokens.txt
cd /root/check_mk_push_agent_server
ps -ef | awk '/\/root\/check_mk_push_agent_server\/check_mk_push_agent_server.py/ {print "kill -9",$2}'  |sh
/root/check_mk_push_agent_server/check_mk_push_agent_server.py

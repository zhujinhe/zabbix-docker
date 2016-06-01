#!/bin/bash

# argument processing

CONFIG_PATH=/etc/zabbix/zabbix_agentd.d/

if [ "$#" -eq 1 ]; 
	then CONFIG_PATH=$1
fi

# Copy the files
mkdir -p /etc/zabbix/script/
cp -f *.py /etc/zabbix/script
cp -f *.conf $CONFIG_PATH
cp -f *.xml /tmp

# tell the user some stuff
echo "Python scripts copied to /etc/zabbix/script"
echo "zabbix-agent configuration files copied to $CONFIG_PATH"
echo "XML Zabbix Templates copied to /tmp"
echo ""
echo "You will need to restart the zabbix-agent and import the XML template on your Zabbix server"


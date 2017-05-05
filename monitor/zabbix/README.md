Config the zabbix web host
1. go to Configuration->Hosts->create host
2. Host name and Visible name is ok for anything 
   Agent interface  IP address is important, this is not host ip address, but it is zabbix_agentd container address
   you can find ip of container by typing 
   # docker inspect containerID
3. then press add buttun on the bottom
4. go to Configuration->Hosts->name of zabbix_agentd->template, choose the suitable template to linked to hosts


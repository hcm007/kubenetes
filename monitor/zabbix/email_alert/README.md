1. creare the item you want to monitor
 (1)Configuration->Hosts->Zabbix server->items->create item->
 (2) Name :
     key:ping (the script u defind in host,in /etc/zabbix/zabbix_agentd.conf UserParamer=ping,echo 100)
     Host interface: ip:10050
     add
2. create a triger for the item
3. write a email script to send alert
4.the mainly i talk about is how to use action to execute sript
  (1) Configuration->Actions->create action
  (2)  Name:
       New condition(meaning: if the condition satisfy the triger, zabbix will execute the action)
       in Opration, Operatioin details:
                                      Operation type:Remote command
                                      target list: choose all
                                      type: Custom script
                                      Execute on Zabbix server
                                      /roofts/send_email.py
  (3)Add


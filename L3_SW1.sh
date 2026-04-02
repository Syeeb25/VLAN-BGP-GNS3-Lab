IOU1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
IOU1(config)#vlan 10
IOU1(config-vlan)#name IBM
IOU1(config-vlan)#ex
IOU1(config)#int e0/0
IOU1(config-if)#switchport mode access
IOU1(config-if)#switchport access Vlan 10
IOU1(config-if)#no sh
IOU1(config-if)#int e0/1
IOU1(config-if)#switchport trunk encapsulation dot1q
IOU1(config-if)#switchport mode trunk
IOU1(config-if)#no sh

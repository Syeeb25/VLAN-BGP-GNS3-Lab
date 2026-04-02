IOU2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
IOU2(config)#Vlan 20
IOU2(config-vlan)#name Bt
IOU2(config-vlan)#ex
IOU2(config)#int e0/0
IOU2(config-if)#switchport mode access
IOU2(config-if)#switchport access vlan 20
IOU2(config-if)#no sh
IOU2(config-if)#int e0/1
IOU2(config-if)#switchport trunk encapsulation dot1q
IOU2(config-if)#switchport mode trunk
IOU2(config-if)#no sh

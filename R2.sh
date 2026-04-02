R2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R2(config)#
R2(config)#
R2(config)#
R2(config)#
R2(config)#
R2(config)#int g0/0
R2(config-if)#ip add 30.0.0.2 255.255.255.0
R2(config-if)#
R2(config-if)#no sh
R2(config-if)#
*Apr  2 08:38:50.863: %LINK-3-UPDOWN: Interface GigabitEthernet0/0, changed state to up
*Apr  2 08:38:51.863: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet0/0, changed state to up
R2(config-if)#int f2/0
R2(config-if)#ip add 40.0.0.1 255.255.255.0
R2(config-if)#no sh
R2(config-if)#
R2(config-if)#
*Apr  2 08:39:33.995: %LINK-3-UPDOWN: Interface FastEthernet2/0, changed state to up
*Apr  2 08:39:34.995: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet2/0, changed state to up
R2(config-if)#int g1/0
R2(config-if)#no sh
R2(config-if)#int g1
*Apr  2 08:39:46.239: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Apr  2 08:39:47.239: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R2(config-if)#int g1/0.20
R2(config-subif)#encapsulation dot1q 20
R2(config-subif)#ip add 50.0.0.1 255.255.255.0
R2(config-subif)#^Z
R2#
R2#
R2#
*Apr  2 08:42:11.859: %SYS-5-CONFIG_I: Configured from console by console
R2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R2(config)#
R2(config)#
R2(config)#
R2(config)#
R2(config)#router bgp 200
R2(config-router)#nei
R2(config-router)#neighbor 30.0.0.1 remote-as 100
R2(config-router)#net
R2(config-router)#network 40.0.0.0 mask 255.255.255.0
*Apr  2 08:42:59.175: %BGP-5-ADJCHANGE: neighbor 30.0.0.1 Up
R2(config-router)#network 40.0.0.0 mask 255.255.255.0
R2(config-router)#network 50.0.0.0 mask 255.255.255.0
R2(config-router)#network 192.168.1.0 mask 255.255.255.0
R2(config)#interface g1/0.20
R2(config-subif)#ip address 192.168.1.1 255.255.255.0
R2(config-subif)#no shutdown
R2(config-subif)#^Z
R2#p
*Apr  2 08:53:52.235: %SYS-5-CONFIG_I: Configured from console by console
R2#ping 192.168.1.2
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 192.168.1.2, timeout is 2 seconds:
.!!!!
Success rate is 80 percent (4/5), round-trip min/avg/max = 4/12/20 ms
R2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R2(config)#router bgp 200
R2(config-router)#neighbor 30.0.0.1 remote-as 100
R2(config-router)#network 40.0.0.0 mask 255.255.255.0
R2(config-router)#network 192.168.1.0 mask 255.255.255.0
R2(config-router)#
*Apr  2 08:58:13.263: %SYS-5-CONFIG_I: Configured from console by console
R2#sh ip route
Codes: L - local, C - connected, S - static, R - RIP, M - mobile, B - BGP
       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area
       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2
       E1 - OSPF external type 1, E2 - OSPF external type 2
       i - IS-IS, su - IS-IS summary, L1 - IS-IS level-1, L2 - IS-IS level-2
       ia - IS-IS inter area, * - candidate default, U - per-user static route
       o - ODR, P - periodic downloaded static route, H - NHRP, l - LISP
       a - application route
       + - replicated route, % - next hop override

Gateway of last resort is not set

      10.0.0.0/24 is subnetted, 1 subnets
B        10.0.0.0 [20/0] via 30.0.0.1, 00:00:51
      30.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        30.0.0.0/24 is directly connected, GigabitEthernet0/0
L        30.0.0.2/32 is directly connected, GigabitEthernet0/0
      40.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        40.0.0.0/24 is directly connected, FastEthernet2/0
L        40.0.0.1/32 is directly connected, FastEthernet2/0
B     192.168.0.0/24 [20/0] via 30.0.0.1, 00:15:18
      192.168.1.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.1.0/24 is directly connected, GigabitEthernet1/0.20
L        192.168.1.1/32 is directly connected, GigabitEthernet1/0.20
R2#

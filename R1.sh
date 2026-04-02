R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#
R1(config)#int g0/0
R1(config-if)#ip add 30.0.0.1 255.255.255.0
R1(config-if)#no sh
R1(config-if)#
R1(config-if)#
R1(config-if)#int f
*Apr  2 08:33:48.471: %LINK-3-UPDOWN: Interface GigabitEthernet0/0, changed state to up
*Apr  2 08:33:49.471: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet0/0, changed state to up
R1(config-if)#int f2/0
R1(config-if)#ip add 192.168.0.2 255.255.255.0
R1(config-if)#no sh
R1(config-if)#
*Apr  2 08:34:17.479: %LINK-3-UPDOWN: Interface FastEthernet2/0, changed state to up
*Apr  2 08:34:18.479: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet2/0, changed state to up
R1(config-if)#int g1/0
R1(config-if)#no sh
R1(config-if)#int
*Apr  2 08:36:41.927: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Apr  2 08:36:42.927: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R1(config-if)#int g1/0.10
R1(config-subif)#encapsulation dot1q 10
R1(config-subif)#ip add 20.0.0.2 255.255.255.0
R1(config-subif)#^Z
R1#
*Apr  2 08:43:12.827: %SYS-5-CONFIG_I: Configured from console by console
R1#
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#router bgp 100
R1(config-router)#nei
R1(config-router)#neighbor 30.0.0.2 remote-as 200
R1(config-router)#network 192.168.0.0 mask 255.255.255.0
R1(config-router)#net
R1(config-router)#network 20.0.0.0 mask 255.255.255.0
R1(config-router)#
*Apr  2 08:45:29.263: %BGP-5-ADJCHANGE: neighbor 30.0.0.2 Up
*Apr  2 08:47:13.127: %SYS-5-CONFIG_I: Configured from console by console
R1#sh ip bgp  summ
BGP router identifier 192.168.0.2, local AS number 100
BGP table version is 5, main routing table version 5
4 network entries using 576 bytes of memory
4 path entries using 320 bytes of memory
2/2 BGP path/bestpath attribute entries using 288 bytes of memory
1 BGP AS-PATH entries using 24 bytes of memory
0 BGP route-map cache entries using 0 bytes of memory
0 BGP filter-list cache entries using 0 bytes of memory
BGP using 1208 total bytes of memory
BGP activity 4/0 prefixes, 4/0 paths, scan interval 60 secs

Neighbor        V           AS MsgRcvd MsgSent   TblVer  InQ OutQ Up/Down  State/PfxRcd
30.0.0.2        4          200       6       7        5    0    0 00:01:47        2
R1#ping 40.0.0.2
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 40.0.0.2, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 20/32/80 ms
R1#sh ip  int br
Interface                  IP-Address      OK? Method Status                Protocol
Ethernet0/0                unassigned      YES unset  administratively down down
GigabitEthernet0/0         30.0.0.1        YES manual up                    up
GigabitEthernet1/0         unassigned      YES unset  up                    up
GigabitEthernet1/0.10      20.0.0.2        YES manual up                    up
FastEthernet2/0            192.168.0.2     YES manual up                    up
FastEthernet2/1            unassigned      YES unset  administratively down down
R1#ping 40.0.0.1
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 40.0.0.1, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 8/8/12 ms
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#interface g1/0.10
R1(config-subif)#ip address 10.0.0.1 255.255.255.0
R1(config-subif)#no shutdown
R1(config-subif)#^Z
R1#
*Apr  2 08:53:18.355: %SYS-5-CONFIG_I: Configured from console by console
R1#ping 10.0.0.1
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 10.0.0.1, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 4/4/8 ms
R1#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
Ethernet0/0                unassigned      YES unset  administratively down down
GigabitEthernet0/0         30.0.0.1        YES manual up                    up
GigabitEthernet1/0         unassigned      YES unset  up                    up
GigabitEthernet1/0.10      10.0.0.1        YES manual up                    up
FastEthernet2/0            192.168.0.2     YES manual up                    up
FastEthernet2/1            unassigned      YES unset  administratively down down
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#router bgp 100
R1(config-router)#neighbor 30.0.0.2 remote-as 200
R1(config-router)#network 10.0.0.0 mask 255.255.255.0
R1(config-router)#network 192.168.0.0 mask 255.255.255.0
R1#ping 40.0.0.1
Type escape sequence to abort.
Sending 5, 100-byte ICMP Echos to 40.0.0.1, timeout is 2 seconds:
!!!!!
Success rate is 100 percent (5/5), round-trip min/avg/max = 8/10/12 ms
R1#

R1#sh ip route
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

      10.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        10.0.0.0/24 is directly connected, GigabitEthernet1/0.10
L        10.0.0.1/32 is directly connected, GigabitEthernet1/0.10
      30.0.0.0/8 is variably subnetted, 2 subnets, 2 masks
C        30.0.0.0/24 is directly connected, GigabitEthernet0/0
L        30.0.0.1/32 is directly connected, GigabitEthernet0/0
      40.0.0.0/24 is subnetted, 1 subnets
B        40.0.0.0 [20/0] via 30.0.0.2, 00:31:19
      192.168.0.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.0.0/24 is directly connected, FastEthernet2/0
L        192.168.0.2/32 is directly connected, FastEthernet2/0
B     192.168.1.0/24 [20/0] via 30.0.0.2, 00:20:46

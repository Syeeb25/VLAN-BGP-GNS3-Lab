PC3> ip 192.168.0.1/24 192.168.0.2
Checking for duplicate address...
PC3 : 192.168.0.1 255.255.255.0 gateway 192.168.0.2

PC3> ping 10.0.0.2

84 bytes from 10.0.0.2 icmp_seq=1 ttl=63 time=29.125 ms
84 bytes from 10.0.0.2 icmp_seq=2 ttl=63 time=19.950 ms
84 bytes from 10.0.0.2 icmp_seq=3 ttl=63 time=17.983 ms
84 bytes from 10.0.0.2 icmp_seq=4 ttl=63 time=18.513 ms
84 bytes from 10.0.0.2 icmp_seq=5 ttl=63 time=17.908 ms

PC3> ping 192.168.1.2

84 bytes from 192.168.1.2 icmp_seq=1 ttl=62 time=23.870 ms
84 bytes from 192.168.1.2 icmp_seq=2 ttl=62 time=30.502 ms
84 bytes from 192.168.1.2 icmp_seq=3 ttl=62 time=24.407 ms
84 bytes from 192.168.1.2 icmp_seq=4 ttl=62 time=24.549 ms
84 bytes from 192.168.1.2 icmp_seq=5 ttl=62 time=31.112 ms
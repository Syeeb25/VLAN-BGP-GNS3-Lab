PC1> ip 10.0.0.2/24 10.0.0.1
Checking for duplicate address...
PC1 : 10.0.0.2 255.255.255.0 gateway 10.0.0.1

PC1> ping 192.168.0.1

host (10.0.0.1) not reachable

PC1> ping 10.0.0.1

host (10.0.0.1) not reachable

PC1> ping 192.168.0.1

84 bytes from 192.168.0.1 icmp_seq=1 ttl=63 time=72.501 ms
84 bytes from 192.168.0.1 icmp_seq=2 ttl=63 time=19.605 ms
84 bytes from 192.168.0.1 icmp_seq=3 ttl=63 time=14.433 ms
84 bytes from 192.168.0.1 icmp_seq=4 ttl=63 time=15.412 ms
84 bytes from 192.168.0.1 icmp_seq=5 ttl=63 time=20.640 ms

PC1> ping 40.0.0.2

40.0.0.2 icmp_seq=1 timeout
40.0.0.2 icmp_seq=2 timeout
40.0.0.2 icmp_seq=3 timeout
40.0.0.2 icmp_seq=4 timeout
40.0.0.2 icmp_seq=5 timeout

PC1> ping 40.0.0.2

84 bytes from 40.0.0.2 icmp_seq=1 ttl=62 time=59.861 ms
84 bytes from 40.0.0.2 icmp_seq=2 ttl=62 time=29.329 ms
84 bytes from 40.0.0.2 icmp_seq=3 ttl=62 time=34.311 ms
84 bytes from 40.0.0.2 icmp_seq=4 ttl=62 time=38.939 ms
84 bytes from 40.0.0.2 icmp_seq=5 ttl=62 time=40.015 ms

PC1> ping 192.168.1.2

84 bytes from 192.168.1.2 icmp_seq=1 ttl=62 time=41.521 ms
84 bytes from 192.168.1.2 icmp_seq=2 ttl=62 time=39.381 ms
84 bytes from 192.168.1.2 icmp_seq=3 ttl=62 time=39.891 ms
84 bytes from 192.168.1.2 icmp_seq=4 ttl=62 time=31.278 ms
84 bytes from 192.168.1.2 icmp_seq=5 ttl=62 time=23.197 ms


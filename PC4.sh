PC4> ip 40.0.0.2/24 40.0.0.1
Checking for duplicate address...
PC4 : 40.0.0.2 255.255.255.0 gateway 40.0.0.1

PC4> ping 10.0.0.2

84 bytes from 10.0.0.2 icmp_seq=1 ttl=62 time=23.521 ms
84 bytes from 10.0.0.2 icmp_seq=2 ttl=62 time=21.483 ms
84 bytes from 10.0.0.2 icmp_seq=3 ttl=62 time=24.984 ms
84 bytes from 10.0.0.2 icmp_seq=4 ttl=62 time=24.477 ms
84 bytes from 10.0.0.2 icmp_seq=5 ttl=62 time=28.590 ms

PC4> ping 192.168.0.1

84 bytes from 192.168.0.1 icmp_seq=1 ttl=62 time=26.580 ms
84 bytes from 192.168.0.1 icmp_seq=2 ttl=62 time=24.503 ms
84 bytes from 192.168.0.1 icmp_seq=3 ttl=62 time=23.503 ms
84 bytes from 192.168.0.1 icmp_seq=4 ttl=62 time=30.753 ms

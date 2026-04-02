 # VLAN + BGP Network Lab (GNS3)  #


This project demonstrates the design and implementation of a multi-network topology using **VLANs, Inter-VLAN Routing (Router-on-a-Stick), and BGP (Border Gateway Protocol)** in a simulated environment using GNS3.

The lab ensures **end-to-end connectivity** between multiple PCs across different subnets and validates routing using dynamic protocols.



 ## Topology Description ##

The network consists of:

* **2 Routers (R1, R2)** connected via a WAN link (30.0.0.0/24)
* **2 Layer 2 Switches (IOU1, IOU2)** for VLAN segmentation
* **4 End Devices (PC1, PC2, PC3, PC4)** in different networks

Each segment is connected through VLANs and routed via routers using BGP.

---

##  Network Details ##

| Device  | Network      | IP Range       |
| ------- | ------------ | -------------- |
| PC1     | VLAN 10      | 10.0.0.0/24    |
| PC2     | VLAN 20      | 192.168.1.0/24 |
| PC3     | Direct to R1 | 192.168.0.0/24 |
| PC4     | Direct to R2 | 40.0.0.0/24    |
| R1 ↔ R2 | WAN Link     | 30.0.0.0/24    |

---

##  Technologies Used ## 

* **GNS3** (Network Simulation)
* **Cisco IOS / IOU Images**
* **VLAN Configuration**
* **Router-on-a-Stick**
* **BGP (eBGP)**
* **IP Addressing & Subnetting**

---

##  Configuration Breakdown ##

###  VLAN Configuration (Switches) ##

* VLAN 10 configured on IOU1 for PC1
* VLAN 20 configured on IOU2 for PC2
* Access ports assigned to VLANs
* Trunk links established between switch and router


###  Inter-VLAN Routing (Router-on-a-Stick) ##

* Subinterfaces created on routers:

  * `g1/0.10` → VLAN 10
  * `g1/0.20` → VLAN 20
* Dot1Q encapsulation used
* Gateways configured for end devices


###  BGP Configuration ###

* eBGP established between:

  * **R1 (AS 100)**
  * **R2 (AS 200)**
* Networks advertised using:

  * `network` statements
* Routing tables updated dynamically

---

##  Verification Commands ##

### On Routers:

```bash
show ip bgp summary
show ip route
```

### On Switches ###

```bash
show vlan brief
show interfaces trunk
```

---

##  Testing & Validation ##

* Successful ping tests between:

  * PC1 ↔ PC2
  * PC1 ↔ PC4
  * PC3 ↔ PC2
* Verified BGP neighbor state (**Established**)
* Confirmed route propagation across routers



###  Common Issues Faced ###

* Incorrect VLAN assignment
* Trunk misconfiguration
* Wrong gateway IP on PCs
* BGP neighbor not forming
* Missing network statements in BGP



##  Key Learnings ##

* VLAN segmentation and switching concepts
* Inter-VLAN routing using router-on-a-stick
* BGP configuration and route exchange
* Troubleshooting real-world network issues
* End-to-end connectivity validation

---

##  Future Enhancements ##

* Add **OSPF instead of BGP**
* Implement **ACL for security**
* Add **multiple VLANs**
* Introduce **redundancy (HSRP/VRRP)**



##  Conclusion ##

This project provides hands-on experience with enterprise-level networking concepts and strengthens understanding of VLANs, routing, and BGP in real-world scenarios.

---
![alt text](image.png)

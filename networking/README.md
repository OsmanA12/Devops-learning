### **Networking Fundamentals 🌐**

---

#### **Overview of Computer Networks**

A **computer network** is a group of devices connecting to share information. For example, a household may consist of a phone, laptop, and TV all connecting to the same Wi-Fi, forming a network. 📱💻📺

**Purpose**: Communication, information, and resource sharing.

**Different Network Types**:
- **LAN (Local Area Network)**: Small and covers a limited area (e.g., home Wi-Fi). 🏠
- **WAN (Wide Area Network)**: Covers a wider area (e.g., school Wi-Fi). 🌍

---

#### **Importance of Computer Networks**
- **Foundation**: Enables communication between devices.
- **Resource Sharing**: Facilitates sharing of files, printers, and more. 🖨️
- **Internet Functionality**: Critical for browsing, streaming, and communication. 📡
- **Application Support**: Backbone for app connectivity and data transfer.

---

### **Networking in DevOps**

Networking plays a key role in DevOps due to reasons such as:
- **Server Interaction**: Enables communication between servers and applications. 💻➡️💻
- **Deployment**: Critical for launching and updating applications.
- **Management**: Crucial for monitoring and managing infrastructure.
- **Optimization**: Enhances troubleshooting, performance, and scalability. ⚙️

---

### **LAN and WAN**

These are both types of networks:
- **LAN (Local Area Network)**: Connects devices to share resources and work in small areas like homes and offices. 🏢
- **WAN (Wide Area Network)**: Connects devices across the globe (e.g., the internet). A WAN contains multiple LANs and works in wider areas like cities and countries. 🌆

---

### **Key Networking Components**

Essential devices that make up a network:

<img width="73" alt="Screenshot 2024-09-15 at 22 07 52" src="https://github.com/user-attachments/assets/9c797b31-bb4b-4862-9136-1d051bde464b">

- **Switches**: 
  - Connect multiple devices within the same network.
  - Manage data flow within a LAN, preventing congestion and ensuring efficient communication. ⚡

<img width="73" alt="Screenshot 2024-09-15 at 22 11 24" src="https://github.com/user-attachments/assets/8a170c57-f65b-4577-81dc-0f01cdff6419">

- **Routers**: 
  - Act like traffic cops for your networks. 🚦
  - Direct traffic between networks and connect different networks.

<img width="68" alt="Screenshot 2024-09-15 at 22 12 33" src="https://github.com/user-attachments/assets/981848ed-ed90-4398-8c9c-f29df11b2710">

- **Firewalls**: 
  - Act as a security guard for the network, protecting privacy. 🔒
  - Monitor and control incoming and outgoing network traffic, preventing unauthorized access.

---

### **IP Address & MAC Address**

#### **IP Addresses**
An **IP address** (Internet Protocol address) is a unique identifier assigned to each device on a network, allowing devices to locate and communicate with each other. Without IP addresses, devices wouldn’t know where to send or receive data.

**Two Main Types of IP Addresses**:

<img width="147" alt="Screenshot 2024-09-15 at 22 21 22" src="https://github.com/user-attachments/assets/3c5ae84a-6b37-4fd3-a6dd-b394eb61af19">

- **IPv4 Addresses**:
  - Most common.
  - Each group is separated by dots and can range from 0-255.
  - Due to the rapid growth of the internet, IPv4 addresses are becoming scarce, leading to the creation of IPv6 addresses.

<img width="197" alt="Screenshot 2024-09-15 at 22 24 15" src="https://github.com/user-attachments/assets/9c07b73d-6df2-4101-aa62-f8207829c32a">

- **IPv6 Addresses**:
  - Provide a large pool of IP addresses.
  - Include enhancements like simplified addresses and improved security features.

<img width="144" alt="Screenshot 2024-09-15 at 22 30 52" src="https://github.com/user-attachments/assets/95975c60-b61f-4d74-abed-a1d58ade98f7">

#### **MAC Addresses**
A **MAC address** (Media Access Control) is a unique identifier assigned to network interfaces. 

**Functions of a MAC Address**:
- Operates at the data link layer.
- Facilitates device identification within a local network.
- Important for network communication and security.

---

### **Ports & Protocols: TCP, UDP**

#### **Ports**
Ports are logical endpoints for communication, helping data go to the right place. 📍

#### **Protocols**
Protocols ensure that the data is understandable. They govern data transmission, defining how data is formatted and transmitted across a network.

**Why are Ports & Protocols Important?**
Without ports and protocols, our communications would be a mess, as they facilitate communication between devices.

---

### **TCP (Transmission Control Protocol)**

TCP is like a postman of the internet, ensuring that data sent from one device reaches another accurately and in the correct order. 📬

**Characteristics of TCP**:
- Connection-oriented: A connection is established before any data is sent (like a phone call).
- Requires a "handshake": A process where two devices agree to communicate.
- Reliable data transfer: Ensures that all data sent is received correctly, resending lost or corrupted data.

**Functions of TCP**:
- Ensures data is delivered in order.
- Provides error checking and flow control to prevent congestion and maintain communication flow.
- Supports bidirectional communications (e.g., emails, text messages).

---

### **UDP (User Datagram Protocol)**

UDP is a simple protocol used to send and receive data without establishing a connection.

**Characteristics of UDP**:
- Prior communication is not required, which can be a benefit or a drawback since there is no guarantee that data will reach its destination.
- Connectionless: Each packet is sent independently.
- Fast but less reliable: No connection means no guarantee of delivery.

**Functions**:
- Suitable for real-time applications where speed is more important than reliability (e.g., video streaming, online gaming, DNS, VPN). 🎮

---

### **TCP vs. UDP**

| **Feature**          | **TCP**                         | **UDP**                        |
|----------------------|----------------------------------|--------------------------------|
| Connection Type      | Connection-oriented              | Connectionless                 |
| Reliability          | More reliable, ensures delivery and order | Less reliable, no guarantee of delivery or order |
| Speed                | Slower due to overhead setup     | Faster, no handshake required   |
| Error Checking       | Less prone to errors             | More prone to errors           |
| Use Cases            | Web browsing, email, file transfer | Online gaming, VPN, DNS       |

---

### **OSI (Open Systems Interconnection Model)**

**Why do we need a communication model?**
A communication model provides a standard framework that simplifies how devices and applications communicate over a network. It ensures that all devices in the network can understand each other. 🛠️

**Benefits**:
- **Application Independence**: Without a standard model, applications must understand the specifics of the underlying network.
- **Simplified Network Equipment Management**: Upgrading network equipment is easier with a standard model.
- **Decoupled Innovation**: Innovation can occur in each layer independently without affecting the entire system.

---

### **The 7 Layers of the OSI Model**

<img width="1123" alt="Screenshot 2024-09-15 at 23 43 09" src="https://github.com/user-attachments/assets/6aa5ae81-630f-4a00-8454-3df78ab681cb">

1. **Application Layer**:
   - Transmits raw bit streams over a physical medium.
   - Deals with the hardware connection (cables, switches, network interface cards).

2. **Data Link Layer**:
   - Responsible for node-to-node data transfer and error correction.
   - Organizes data packets into frames.

3. **Network Layer**:
   - Determines how data is sent to a recipient.
   - Manages packet forwarding and routing.

4. **Transport Layer**:
   - Provides reliable data transfer services to upper layers.
   - Segments and reassembles data (TCP and UDP).

5. **Session Layer**:
   - Manages sessions between applications.
   - Establishes, manages, and terminates connections.

6. **Presentation Layer**:
   - Translates data between the application layer and the network.
   - Handles encryption and data formatting.

7. **Application Layer**:
   - Provides network services directly to end-user applications.
   - Handles web browsing, file transfers, and emails.

---

### **TCP/IP Model**

<img width="637" alt="Screenshot 2024-09-16 at 00 33 41" src="https://github.com/user-attachments/assets/dff8c174-4812-4d69-9815-a78f6ff8e271">

The backbone of the internet, consisting of four layers:

1. **Application Layer**:
   - Where network applications and their protocols operate (e.g., HTTP, TLS, DNS).

2. **Transport Layer**:
   - Handles end-to-end communication and data transfer (TCP and UDP).

3. **Internet Layer**:
   - Responsible for logical addressing and routing data across networks (IP).

4. **Network Access Layer**:
   - Encompasses the physical and data aspects (e.g., Ethernet, wireless, LAN). 📡

### OSI Layers Example: POV of Sender and Receiver 

**POV of Sender**  

<img width="1368" alt="Screenshot 2024-09-17 at 23 59 04" src="https://github.com/user-attachments/assets/02ecda5a-e798-4d7c-b79e-b43141b75bee">


Sender sends a **POST request** to an HTTP web page.

- **POST Request**: A method used in HTTP to send data to a server to create or update resources. It transmits data in the request body (such as form data or JSON) to the server. It's commonly used when submitting forms or uploading files. 📤

- **JSON**: Used to exchange data between clients and servers, easy-to-parse format (simple for computers to read due to clear structure), often in APIs for sending and receiving structured information over HTTP. 🌐

**Layer 7**: The JSON data within the POST request is sent to the HTTPS server when the application is installed.

**Layer 6**: Converting the sender's data to flat byte data strings which can be sent over networks.

**Layer 5**: Request to establish secure communication from TCP or TLS via HTTP.

**Layer 4**: Responsible for delivering the sender's data (Will send a send request).

**Layer 3**: The send request gets placed into IP packets ensuring that it knows where it's going and it's ready to go.

**Layer 2**: Wraps the IP packets into frames, includes the source and destination MAC address.

**Layer 1**: Where the data gets converted into a physical signal.

---

**POV of Receiver**

<img width="1368" alt="Screenshot 2024-09-18 at 00 19 07" src="https://github.com/user-attachments/assets/2e68b3a6-cdb4-4f8e-8d56-dff26305b38f">



**Layer 1**: Physical signal (radio, electric, or light) is back into digital data bits.

**Layer 2**: The data bits are assembled in frames, responsible for ensuring that data can travel over the network.

**Layer 3**: The frames are then assembled into an IP packet, containing destination info.

**Layer 4**: The IP packets are assembled to TCP segments.

**Layer 5**: Comes into play to gain and establish a connection, only arrives at this layer when necessary.

**Layer 6**: Breaking down the data to ensure that the structure is good, like decrypting it to JSON or something the application can use.

**Layer 7**: The data has finally reached its intended application, being interpreted by the HTTP request.

---

### DNS (Domain Name System)

Ever wondered how a website can be typed into a browser and somehow get the site to load? This is all thanks to DNS. 🌍

**DNS**: Allows us humans to keep track of websites and hosts by name rather than IP address. It translates domain names to IP addresses.

**DNS Role in Networking**:  
It simplifies navigation on the internet (for example, google rather than google's IP address) and is essential for accessing websites and services.

**DNS Components**:

- **Name Servers**: Crucial for DNS functionality. Without them, DNS wouldn't work properly. 
  - Load DNS settings and configurations.
  - Respond to queries from clients and other servers about domain names.
  - Can be authoritative or recursive.
    - **Authoritative Name Servers**: Hold the actual DNS records. When queried, they provide the definitive answer such as the IP address for a domain name.
    - **Recursive Name Servers**: Do not hold the final answer. Instead, they query the other name servers on behalf of the client to find the correct DNS record. They also cache info that they retrieve to speed up future queries.

**How to Find the Name Servers of a Domain on Your Server**:  
```
dig ns <domain name>
```
**Example**:  
```
dig ns google.com
```
**For a shorter version**:  
```
dig +short ns google.com
```

**Zone Files**:  
Stored inside name files, contain information about the domain, help name servers answer queries about how to get to a domain if the name server doesn't know the answer directly, and organize DNS in a readable and manageable format (easier to handle DNS records).

**Example of a Zone File**:

<img width="980" alt="Screenshot 2024-09-19 at 16 50 06" src="https://github.com/user-attachments/assets/85b09eb3-5bf9-4025-ab3f-519868406fac">

**Records**:  
Multiple records are composed in a single zone file, each record contains specific information about hosts, name servers, and other resources. Some components of records are: TTL (Time to Live), Record name, Class, Type, Data.

| **Field Name**       | **Description**                                                                                         |
|----------------------|---------------------------------------------------------------------------------------------------------|
| **Record Name**      | The domain name being queried                                                                           |
| **Time to Live (TTL)**| Indicates how long the record is valid (before refresh required)                                         |
| **Class**            | Namespace of the record information                                                                     |
| **Type**             | Type of record (A, MX, AAAA, etc.)                                                                      |
| **NS**               | Name server Record                                                                                      |
| **Data**             | The actual information corresponding to the record type (e.g., IP address for an A record)              |

---

### Different Types of Records

| **Record** | **Description**                                                                                           | **Benefit**                                                        |
|------------|-----------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| **A**      | Maps a domain name to an IPv4 address.                                                                     | Quick and simple resolution for IPv4 networks.                     |
| **AAAA**   | Maps a domain name to an IPv6 address.                                                                     | Supports modern IPv6 networks with a larger address pool.           |
| **CNAME**  | Alias of one name to another, allowing multiple domain names to point to the same IP address.              | Simplifies domain management by using one canonical domain.         |
| **MX**     | Specifies the mail server responsible for receiving email for the domain.                                  | Ensures efficient and reliable email delivery for the domain.       |
| **TXT**    | Allows domain administrators to insert any text into DNS, commonly used for verification and SPF data.     | Useful for domain verification and improving email security (SPF).  |

---

**A Records**: Maps a domain name to an IPv4 address.  
**Example**: google.com → 216.58.204.79

**AAAA Records**: Maps a domain name to an IPv6 address.  
**Example**: google.com → 2a00:1450:4009:81d::200e

**CNAME Records**: Technically makes a name for a domain.  
**Example**: www.google.com → google.com

**MX Records**: ‘Mail Exchange’ records specify the mail server responsible for receiving an email for the domain. Include a priority value.  
**Example**: google.com → mailserver.google.com

**TXT Records**: Store text information for a domain. The main purpose is to verify that you actually own the domain.  
**Example**: google.com → "v=spf1 include.com ~all"

---

### How DNS Works: DNS Process

**DNS Resolution**:  
The process of converting domain names to IP addresses and it involves multiple steps and servers.

---

**DNS Hierarchy and Distribution**:

<img width="1370" alt="Screenshot 2024-09-19 at 17 33 25" src="https://github.com/user-attachments/assets/5d78b8a4-bad3-4d1d-b98e-66c7de594ff8">


- **DNS Root (The Boss)**:  
  Doesn’t store details about specific domains but rather keeps high-level information on where to find the top-level domains (TLD) underneath it.

- **Top Level Domains (TLD)**:  
  Like department heads. They include familiar extensions like .com, .co.uk, .org. Each TLD stores information about domains within the scope, just like how a department head will know their employees.

- **Authoritative Name Server Hosts and Zones for Domains**:  
  Like managers as they oversee specific teams. Each name server hosts zones for the domain, meaning that detailed DNS records are being accessed.

- **Domain**:  
  Each domain has its own zone and zone file. The zone is like a team within a department, and the zone file is a list of detailed records for that domain which contains information like the IP addresses and the mail server.

This hierarchy ensures that when you type a website into the browser, it can quickly find the right IP address to connect, no matter where the domain is hosted.

---

### DNS Resolution Process

<img width="1359" alt="Screenshot 2024-09-19 at 17 52 39" src="https://github.com/user-attachments/assets/0bab9779-23fa-4312-8555-ad847e1a86fb">


**Stage 1**: You typed google.com into the browser. The browser then sends a request to a DNS resolver that is local to you.

**Stage 2**: The DNS resolver does a query. It receives the request and starts looking for the IP address. First, it checks its local cache to see if it knows the IP address, and due to not being able to, it moves to the next step.

**Stage 3**: The resolver then queries the Root server for the IP address. The root server doesn't know the IP address of the domain, but it knows where to find the .com - in the TLD server.

**Stage 4**: The TLD server also doesn’t know the exact IP address of the domain, but it knows which authoritative name server to ask.

**Stage 5**: The resolver then queries the authoritative name server for the IP address.

**Stage 6**: The name server definitely has the IP address due to the zone and zone files and returns an IP address to send back to the resolver.

**Stage 7**: The IP address is sent back to the resolver, and the web server is connected.

---

### Importance of DNS Resolution for DevOps Engineers

- Day to day, you're going to be fixing problems related to DNS issues, so understanding the concept is important.
- Essential for troubleshooting DNS issues.
- Critical for configuring and managing network services like VPCs and new networks.

---

### Domain Registrar vs DNS Hosting Provider

- **Domain Registrar**:  
  Allows you to purchase and register domains. Have a relationship with TLD registries and communicate with them to manage domain registrations.  
  **Examples**: GoDaddy, Namecheap, Bluehost.

- **DNS Hosting Provider**:  
  Operates DNS Nameservers that host DNS zones and allows you to

 create DNS records for your domains.  
  **Examples**: Cloudflare, AWS Route 53, DNSMadeEasy.

When a domain is purchased you need a DNS zone to be hosted on a DNS Nameserver. The process varies depending on whether the DNS hosting provider is the same as the registrar.

If the registrar and the provider is the same company, the DNS zone is automatically created and hosted

If they are different then you will need to provide the Nameserver information on where your DNS zone is already hosted. And this process is called:

---

### **DNS Query Process** 🔍

<img width="1359" alt="Screenshot 2024-09-19 at 18 25 03" src="https://github.com/user-attachments/assets/02b06a78-777e-4713-b3e7-4449714dc957">

**Stage 1**: Client wants to visit the website. Domain goes through the local cache and hosts files to see if IP address is contained. 📂  
**Stage 2**: If the IP address is not found the client sends a query to the configured DNS resolver. 📨  
**Stage 3**: The resolver is like a librarian who knows where to find the information. The resolver checks its own cache for its IP and if not found then it asks the Root server for the IP using a .com TLD. 📚  
**Stage 4**: The root server responds with the address of the .com registry server to the resolver.  
**Stage 5**: The resolver then questions the .com Registry server to find the authoritative nameserver for the .com.  
**Stage 6**: The .com Registry server responds with the address of the domains.com Nameserver. The resolver also questions the .com Registry for the DNS records.  
**Stage 7**: The .com registry server sends all the information to the resolver and also saves the queries to speed up the process next time. ⏩  
**Stage 8**: Resolver sends the DNS records for the address to the Name Server.  
**Stage 9**: The address is sent back then the client is now able to connect with the domain! 🌐  

---

### **DNS Tool: Networking Debugging** 🛠️

**nslookup**  
nslookup is a basic and widely used tool used for querying DNS services. When using nslookup you can find information about DNS records for that certain domain and how you use it.  
**Example**:  
`nslookup google.com`  

**dig**  
Domain Information Groper. A flexible and much more detailed than nslookup for creating DNS server.  
**Example**:  
`dig google.com`  

<img width="575" alt="Screenshot 2024-09-19 at 19 46 44" src="https://github.com/user-attachments/assets/21e2e09a-6fe0-495c-9c7a-d60a1cfdaa71">

- **Server**: The server you're going through to get to where your destination is.  
- **Address**: Same thing but specifies with the port #53 which uses DNS.  
- **Non-authoritative answer**: Means the response came back from a cache and not from the authoritative DNS.  

<img width="575" alt="Screenshot 2024-09-19 at 19 51 26" src="https://github.com/user-attachments/assets/ead4e22f-ced9-4a28-b81c-5d98361dbca0">

- **Question section**: Means it's telling you the query that you made.  
- **Answer section**: Comes with a list of IP addresses associated with that domain.  

<img width="575" alt="Screenshot 2024-09-19 at 19 53 55" src="https://github.com/user-attachments/assets/f39ad068-462f-4687-be07-ed7d15c60f4c">
**dig +short**  
Gives a more simplified answer.  

---


### **Practical Exercise** 📘

<img width="575" alt="Screenshot 2024-09-19 at 19 57 14" src="https://github.com/user-attachments/assets/3d7e9d5d-e418-498f-b5cf-37434854fcc8">
<img width="569" alt="Screenshot 2024-09-19 at 19 57 36" src="https://github.com/user-attachments/assets/398a0179-7cb3-4ff3-b16c-4fe4dc2a9db1">

---

#### **/etc/hosts File** 🖥️

**What is /etc/hosts?**  
A local file on your computer.  
Used to map domains to IP addresses.  
Allows you to override DNS settings for certain domains by providing an alternative IP address.  
Takes precedence over DNS for specific entries.  

**Editing /etc/hosts**:  
Open file with text editor e.g. vim.  
**Format**: `IP_address domain_name`  
**Example**: `127.0.0.1 example.com`  

---

### **Routing** 🚦

**What is routing?**  
Routing is the process of determining paths for data to travel across networks. A GPS for your data. 📍  

**Importance of routing**:  
Ensures data reaches its destination efficiently due to it determining the best ‘route’ for it and it is fundamental for internet functionality.  

**How routing works**:  
Routing process - Routers determine the best path, Use routing tables to make decisions. Key components here are routers which use routing tables (which is like a map to decide where to send data) and routers.  

**Example**:  

<img width="1261" alt="Screenshot 2024-09-19 at 22 24 57" src="https://github.com/user-attachments/assets/c73ebc4c-2687-45e6-8b0a-1e2bebcf2968">


- **Computer 1**: Sends a message or request.  
- **Router**: Then receives message or request and uses its routing tables to find the best path.  
- Data then travels through the path going through different networks and reaches **Computer 2**. 🚀  

**Why routing is important to devops engineers**:  
- **Network performance optimisation** - Ensures data packets are delivered quicker and improves overall network performance.  
- **Ensure reliable application delivery**  
- **Crucial for managing complex infrastructures**  

---

#### **Static vs Dynamic Routing** 🚦

**Static routing**:  
Where routes are manually set up by network admins.  
Reliable but doesn’t adapt well if they are changes as if the route changes you have to update it manually.  
Simple but not scalable.  

**Dynamic routing**:  
Uses algorithms and complex protocols to find the best path for data to route.  
Flexible and adaptable to network changes.  
Automatically adjusted routes.  

---

### **Common Routing Protocols** 🔄

**What is routing protocols?**  
Algorithms that determine the best path.  
Essential as they automate the process of determining the best route for data to travel across a network.  
Automatic route determination.  
Enhance network efficiency which reduces congestion.  

**Common routing Protocols:**  

- **OSPF**:  
  Open Shortest Path First.  
  Finds the shortest path for data to travel.  
  Straightforward.  
  Used mainly in large organisations.  
  Uses link state information to make routing decisions.  
  Can quickly recalculate routes.  

- **BGP**:  
  Border Gateway Protocol.  
  Routes data between different autonomous systems (large networks managed by single organisations).  
  Uses a path vector mechanism which maintains the path information that gets updated dynamically as the network topology changes.  
  Provides greater control over how traffic flows through networks.  

---

### **Subnetting** 🌐

**What is subnetting?**  
Subnetting is dividing one large network into smaller and more manageable sub-networks.  
This improves network management and efficiency.  

**CIDR**:  
Classless Inter-Domain Routing.  
A method for allocating IP addresses and routing IP packets.  
**Format**: `IP_address/prefix_length`  
The prefix_length indicates the bits that are the network part of the IP address.  

---

### **Binary 1s and 0s** 🔢

Base-2 number system only uses 1s and 0s.  
Fundamental language of computers and networking systems.  

**An 8 bit binary table each bit showing its corresponding \(2^n\) value**:

| Bit Position | 2^Value      | Binary Value |
|--------------|--------------|--------------|
|      7       | 2^7 = 128   |      1       |
|      6       | 2^6 = 64    |      1       |
|      5       | 2^5 = 32    |      1       |
|      4       | 2^4 = 16    |      1       |
|      3       | 2^3 = 8     |      1       |
|      2       | 2^2 = 4     |      1       |
|      1       | 2^1 = 2     |      1       |
|      0       | 2^0 = 1     |      1       |

Each bit in an 8-bit binary number corresponds to a power of 2. If the bit is 1, that power of 2 is "on" and added to the total value. In this case, all bits are set to 1, so all powers of 2 are included, and their sum is 255.  

---

### **How to Convert a Binary into a Decimal**

<img width="1261" alt="Screenshot 2024-09-19 at 23 49 07" src="https://github.com/user-attachments/assets/94410556-192b-4171-b805-4a7a15f9b5e7">

---

### **How to Convert an IP Address into Binary**
<img width="1151" alt="Screenshot 2024-09-19 at 23 58 20" src="https://github.com/user-attachments/assets/7f3cffe2-6d66-4bdf-b1e9-80ba280df2b2">

---

### **Practical example**:

**Convert 10.0.0.1 to binary**:  
Using the table I achieved the value `00001010.00000000.00000000.00000001`.  

**Convert 255.0.0.0 to binary**:  
Using the table I achieved `11111111.00000000.00000000.00000000`.  

---

### **Calculating Subnets** 🔢

**What is a subnet mask?**  
Used to divide an IP address into a network and host portions.  
Helps routers determine which part of an IP address is the network address and which part is the host address.  

**Example**:  

<img width="707" alt="Screenshot 2024-09-20 at 00 05 25" src="https://github.com/user-attachments/assets/c89fee14-4dca-47c4-bca9-499cf0cd9dfb">

Example: Subnet `192.168.1.0/26`, What is the network address, broadcast address and the usable IP address?

- **Network address**: `192.168.1.0`  
- **/26**: In an IP address there are 32 bits and 26 bits are being used for the network so:  
  `11111111.11111111.11111111.11000000`  

The subnet mask in decimal is `255.255.255.192`.  

There are 6 bits being used for hosts so \(2^6=64\).  

64 = total addresses.  

The last working address would be `192.168.1.63`.  

So **Broadcast address**: `192.168.1.63`.  

For the usable IP address you take 2 away from the total address (one for the network address and one for the broadcast address) so:  

64-1-1=62.  

And the usable IP address would be `192.168.1.62`.  
  

---

### NAT (Network Address Translation)

**What is NAT?**  
Allows devices on a private network to communicate with the outside world by translating their private IP addresses to a public IP address.

**NAT Process**:

<img width="1365" alt="Screenshot 2024-09-21 at 00 01 24" src="https://github.com/user-attachments/assets/53e0e167-a508-48d7-9943-96f83e257e03">

1. Internal devices use private IP addresses.
2. The router performs NAT and translates the private IP to a public IP address.
3. External networks receive the data using the public IP.

**Types of NAT**:
- **Static NAT**: A single private IP is mapped to a single public IP.
- **Dynamic NAT**: A private IP is mapped to a pool of public IPs.
- **PAT (Port Address Translation)**: Multiple private IPs can be mapped to a single public IP, using different ports to differentiate traffic.

---

### Networking Troubleshooting

**Why Troubleshoot?**  
To ensure that systems run smoothly and efficiently, identify issues quickly, and minimize downtime for users and applications. 🔧

**Common Issues**:
- Connectivity loss
- Slow performance
- IP address conflicts
- DNS failures

**Network Debugging Tools**:

| Command        | Description                                               |
|----------------|-----------------------------------------------------------|
| `ping`         | Tests connectivity by sending ICMP echo requests.        |
| `traceroute`   | Tracks the path packets take to reach a destination.     |
| `nslookup`     | Queries DNS records to find domain information.          |

---

### Cloud Networking

**What is Cloud Networking?**  
The practice of managing and configuring networks in a cloud environment, allowing applications and services to communicate efficiently. ☁️

**Key Components**:
- **VPCs (Virtual Private Clouds)**: Isolated networks in the cloud that provide private environments.
- **Subnets**: Segments within a VPC that help organize the network and control traffic.
- **Gateways**: Connect VPCs to the internet or other networks, enabling data flow and access.

---

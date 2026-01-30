# Azure

<img width="600" height="311" alt="10-reasons-why-choose-azure-for-your-enterprise" src="https://github.com/user-attachments/assets/b34e2161-084e-42f8-b31d-9c84daf41611" />



### What is a server?
- In today's day and age, all applications are developed on the developers machine, but for these applications to be accessible to everyone on the applications have to be deployed on servers
- A server is a computer but a server has local storage (local CPU, RAM)
Purpose of a server is to run applications or processes like your laptop (a rich server)

### What is cloud?
- Cloud is an the delivery of online platforms such as servers, storage, databases, networking, software, and more-over the internet that allows you to manage, configure and maintain servers all remotely
- Saves costs as the is way less practical work (e.g. wiring)
- For cloud to be accessible, there are many data centres across the world which allows users to connect with the cloud
- **Public Cloud** - Cloud that is open to everyone to use e.g. AWS, Azure, GCP
- **Private Cloud** - Cloud that isn’t open to the public, for example governments may have their own cloud

### What is Hybrid Cloud and Multi-cloud?
Hybrid cloud: A company that use a mix of private cloud & public cloud 
Multi-cloud: A company that uses a mix of cloud providers e.g. AWS & Azure


- **Virtualistation**:  A technology that lets you run multiple virtual computers (virtual machines) on one physical server
- **Hypervisor**: A software that enables virtualisation by allowing multiple virtual machines to run on one physical machine, managing how they use hardware resources
- **API (Application Programming Interface)**: It is a set of rules and tools that allows different software programs to communicate with each other (API is a waiter)
- **Regions**: Data centres located in specific region e.g US-east region
- **Availability zones**:  Data centres in a specific region e.g US-east-1
- **Load Balancer**:  A networking tool that distributes data/requests to specific servers (Engineer could configure request based on protocols and such)
- **Scalability**:  Ensuring that your app can scale/enlarge to a high amount of users in a quick time without moving slow or breaking down
- **Elasticity**: Ensuring your app can automatically grow or shrink based on real-time demand, autoscaling is an example of this
- **High Availabilit**y:  Making your applications available all/most of the time
- **Disaster Recovery**: Technique/mechanise where a plan or action is made in case anything goes wrong, like having a backup

## Azure account setup

<img width="1893" height="1932" alt="Screenshot 2025-09-12 095555" src="https://github.com/user-attachments/assets/c25ec281-e2b8-4573-867e-5db62d37c983" />

Head over to Azure on google or desired browser and search for azure. Sign up using credentials and agree to the forms. Once all set up is done, you will be on the home page:



Azure offers over 150 different services such as kubernetes or apache services, this is why it is a very popular cloud platform.

### Why are there regions and availability zones in the cloud?
- **Latency** - if all data centres were based in one region (e.g London) and customers from across the global were trying to access this application (e.g india and china) then there would be a huge amount of traffic, regions and AZs prevent this traffic and spread it among many different regions.
- **Disaster recovery** - if there was a disaster which resulted in damage or riddance of a data centre, there would be a backup option with many different regions 
- **Less downtime**


## IaaS - Infrastructure as a Service
- These could fall as virtual machines, storages or networking services. Users have more control of the service.
- A cloud computing model that provides virtualised computing resources over the internet.
- Users have more control over the infrastructure but are responsible for managing and maintaining the operating system, middle ware and applications


## PaaS - Platform as a Service 
- Services like databases (MySQL databases)
- A cloud computing model that provides a platform allowing customers to develop, run and manage applications without dealing with the complexity of underlying infrastructure
- **Simplified deployment** - developers can focus on coding and application logic while Azure handles the underlying infrastructure
- **Automatic scaling** - Paas offering include built-in scaling capabilities, automatically adjusting resources based on demand
- **Reduced Maintenance** - Azure handles tasks like patching, updates and maintenance freeing up resources for innovation


## SaaS - Software as a Service
- A cloud computing model that delivers software applications over the internet. Users can access the software through a web browser without the need for installation or maintenance.
- Offerings include Microsoft 365, Dynamics and many third-party applications
- **Accessibility** - access software applications from any device with an internet connection
- **Managed by providers** -  SaaS providers handle maintenance, updates and security, reducing the burden on end-users
- **Subscription based**: SaaS applications are typically offered on a subscription basis, allowing users to pay for what they use.
- Example: outlook, word

### How does Azure understand our requests and give us resources?
- This process starts with the user wants to request for a resource (e.g. a VM)
- The devops engineer will receive a request for this service and will head to the service and will provide some of it
- The property will be completed for you and Azure sends all the parameters and such and will provide it to its resource manager

## Resource Manager

### What is a resource manager?
- Responsible for creating resources
- Will create the resource that you are looking for
- Resource manager is the interface between the user and the resource


## Resource Group

### What is a Resource group

<img width="820" height="852" alt="Screenshot 2025-09-15 121957" src="https://github.com/user-attachments/assets/45ac85b0-b0f2-4746-bbab-406a6333ff0a" />

- Grouping of resourcing
- Azure provides a bunch of resources in a group (e.g a VM with a database)
- You can track these resources through this, easy to manage for a large number of users
- Can see costs, security standards through this
- Good for organising


## Virtual Machines
- Apart of a host machine that runs independent with its own applications and OS
- This is possible due to hypervisor (the resource that splits a host machine so that it could run many virtual machines)

### Key Concepts of a VM
- **Resource pooling** - enables the pooling of physical resources such as CPU, memory and storage (these can be dynamically added to VMs based on demand)
- **Isolation** - VMs operate independently of each other, this isolation ensures that issues in one VM does not affect others making it a secure and stable environment
- **Snapshotting and cloning** - Allows the creation of snapshots which capture the state of a VM at a specific point in time. This allows easy backup and recovery. Cloning enables rapid duplication of VMs for scalability

### Different types of Virtual machines in Azure

Azure provides a variety of virtual machine offerings to adapt to different workload requirements. Each VM type is designed with specific hardware configurations to meet performance and scalability needs.

### General Purpose VMs
- Well balanced machines suitable for a variety of workloads. They offer a good balance of CPU-to-memory ratio and are suitable for deployment, testing and small to medium sized databases
- Use cases: Hosting websites, lightweight applications or development and testing environments 

### Compute Optimised VMs
- Designed for compute-intensive workloads that require high CPU power, they provide a high CPU-to-memory ratio, making them suitable for data analytics and computational tasks
- **Use cases**: Batch processing, gaming applications and other CPU-intensive workloads




Ssh -i = Getting into a server or vm (-i standards for identity)

Inbound and outbound


## VMSS ( Virtual Machine Scale Sets)

<img width="500" height="300" alt="vmss" src="https://github.com/user-attachments/assets/896988a3-d9bf-4f44-baaf-2dd29c875091" />


### What is VMSS?
- This lets you create and manage a group of load balanced virtual machines (VM) instances, the number of VM instances can automatically increase or decrease in response to demand or defined schedule

### Benefits of VMSS:
- Easy to create and manage multiple VMs
- Provides high availability and application resilience
- Allows your application to automatically scale as resource demand changes
- Works at large-scale
- Cost-effective service

## Azure Networking

### Virtual Network

<img width="306" height="164" alt="images" src="https://github.com/user-attachments/assets/860d5803-9252-4767-a546-63f76bf0d015" />

- A Virtual Network (VNet) in Azure is a logically isolated network that securely sonnets Azure resources and extends on-premises networks, Key features include:
   **Isolation**: Provides isolations at the network level for segmenting resources and controlling traffic
   **Subnetting**: Divides a VNet into subnets for resource organisation and traffic control
   **Address Space**: VNets have an address space defined using CIDR notation, determining the IP address range

### Subnets & CIDR

<img width="1501" height="667" alt="Architecture-Virtual-Networks-Tutorial-Edureka-1" src="https://github.com/user-attachments/assets/f2c35a2e-f98c-4939-aefa-207e5462da07" />

- **Subnets** - a subdivisions of a Virtual Network, allowing for better organisation and traffic management 
- **CIDR (Classless Inter Domain Routing)** - represents IP address and their routing prefix, specifying the range of IP addresses for a network

### Routes & Route Tables

<img width="225" height="225" alt="images (1)" src="https://github.com/user-attachments/assets/10e11c5e-282d-4592-96ee-6fb2aa6b3fbd" />


- Routes dictate how network traffic is directed, specifying the destination and next hop
- Route Tables are collections of routes associated with subnets, enabling custom routing rules

### Network Security Groups (NSGs)

![1_QbMROyOcGp8AGqzrH7UguA](https://github.com/user-attachments/assets/41f11cc6-0fd7-4a12-b2e8-b9ab7d67df28)


- NSGs are fundamental for Azure’s network security, allowing filtering of inbound and outbound traffic. Key aspects include:
  **Rules**: NSGs define allowed or denied traffic based on source, destination, port and protocol
  **Default Rules**: NSGs have default rules for controlling traffic within the virtual network and between subnets
  **Association**: NSGs can be associated with subnets or individual network interfaces

### Application Security Groups (ASGs)

![application-security-group-azure-thumbnail](https://github.com/user-attachments/assets/c9917a52-48c1-420d-a77d-e2a79d91e738)


- ASGs group Azure virtual machines based on application requirements, simplifying network security:
  **Simplification**: ASGs allow defining rules based on application roles instead of individual IP addresses
 ** Dynamic Membership**: ASGs support dynamic membership based on tags or other attributes
  **Rule Association**: Security rules can be associated with ASGs for intuitive and scalable network security management

### Azure App Gateway & WAF

<img width="600" height="600" alt="download" src="https://github.com/user-attachments/assets/73429094-b4b8-4a02-beee-88f68576228d" />


- Azure Application Gateway is a web traffic load balancer that enables you to manage and route traffic to your web applications, Key features include:
  **Load Balancing**: Distributes incoming traffic across multiple servers to ensure no single server is overwhelmed
  **SSL Terminations**: Offloads SSL processing, improving the efficiency of web servers
- Web Application Firewall (WAF) provides protection against web vulnerabilities and exploits

### Azure Load Balancer

<img width="600" height="315" alt="download (1)" src="https://github.com/user-attachments/assets/6d36bf11-ecb7-4ca4-8137-896c9b0daa0f" />


- Azure load balancer distributes incoming network traffic across multiple servers to ensure no single server is overwhelmed. Key features:
  **Load Balancing Algorithms**: Supports different algorithms for distributing traffic such as round-bin and least connections
  **Availability sets**: Works seamlessly with availability sets to ensure high availability
  **Inbound and Outbound Traffic**: Balances both inbound and outbound traffic

### Azure DNS

<img width="600" height="315" alt="download (2)" src="https://github.com/user-attachments/assets/2257d820-2124-4e43-a3c2-7e059b3081d9" />


- Azure DNS is a scalable and secure domain hosting service. It provides name resolution using the Microsoft Azure Infrastructure. Key features:
  **Domain Hosting**: Hosts domain names and provides name resolution within Azure
  **Integration with Azure Services**: Easily integrates with other Azure services like App service and Traffic manager
  **Global Availability**: Provides low-latency responses globally


### Azure Firewall

<img width="600" height="315" alt="download (3)" src="https://github.com/user-attachments/assets/eb05c361-5f11-446a-9afb-91d7b0c9d15a" />


- Azure firewall is a managed, cloud-based network security service that protects your Azure virtual network resources. Key features include:
  **Stateful Firewall**: Allows or denies traffic based on rules and support inspection
  **Application FQDN (Fully Qualified Domain Name)**: Filters traffic based on fully qualified domain names
  **Threat Intelligence Integration**: Integrates with threat intelligence feeds for enhanced security


### Virtual Network Peering
- Allows connecting Azure Virtual Networks directly, enabling resources in one VNet to communicate with resources in another. Key features include:
  **Global VNet Peering**: Peering can be established across regions
  **Transitive Routing**: Traffic between peered VNets flows directly, improving performance

### VNet Gateway

<img width="601" height="351" alt="717c41fa-d86" src="https://github.com/user-attachments/assets/e2f78ea5-9dd0-4a17-8ac3-426120064859" />


- VNet Gateway enables secure communication between on-premises networks and Azure Virtual Networks. Key features include:
  **Site to Site VPN**: Connect on-premises networks to Azure over an encrypted VPN tunnel
  **Point to Site VPN**: Enables secure remote access to Azure resources

### VPN Gateway

<img width="293" height="172" alt="images (2)" src="https://github.com/user-attachments/assets/b06ac509-7e38-43a2-a8bc-1bbe72df516c" />


- Azure VPN Gateway provides secure, site to site connectivity between your on-premises network and Azure. Key features include:
  **IPsec/IKE VPN Protocols**: Ensures secure communication over the internet
  **High Availability**: Supports active-active and active0passive configurations for high availability
  **BGP Support**: Allows dynamic routing between your on-premises network and Azure

## Azure Storage

### Azure Blob Storage

<img width="330" height="153" alt="images (3)" src="https://github.com/user-attachments/assets/0649adb8-6b63-4751-acbe-d5b8a010ee5b" />

- A cloud-based object storage solution provided by Azure. This is designed to store and manage large amounts of unstructured data, such as documents, images, videos and other types of binary and text data. Blobs are organised into containers and each blob is assigned a unique URL for access
- This is used when you need to store and retrieve large amounts of unstructured data. It is suitable for scenarios like serving images or videos to a website, storing backups and handling data for analytics and data processing
- This is an equivalent to **S3 in AWS**

### Azure File Storage

![azure_file_storage-removebg-preview](https://github.com/user-attachments/assets/36eb99bf-ab5f-4d8f-a193-e2a9a97a9c03)

- A fully managed file share service in the cloud. It provides the Server Message Block (SMB) protocol for sharing files across applications and VMs in the Azure cloud
- Useful for applications that require file access such as config files or data files
- Used when you need a shared file system that can be accessed from multiple VMs or applications. Suitable for scenarios like storing config files, sharing data between applications and serving as a common storage location for applications in a cloud environment 
- The aws equivalent is **Amazon Elastic File System (EFS)**

### Azure Tables

<img width="234" height="216" alt="images (4)" src="https://github.com/user-attachments/assets/0558f38f-7809-4432-8cf5-92077fa5b190" />


- A NoSQL data store service provided by Azure. It stores large amounts of semi-structured data and allows for fast and efficient querying using a key-based access model. Data is organised into tables and each table can store billion of entities
- Used Azure Tables when you need a highly scalable NoSQL data store for semi-structured data with simple key-based access
- Suitable for scenarios like storing configuration data, user profiles and other data where a key-value or key attribute data model is appropriate
- An aws doesn’t have a direct equivalent for Azure tables, Amazon DynamoDB is a similar NoSQL database service that provides key-value and document storage

### Azure Queue Storage

<img width="238" height="212" alt="images (5)" src="https://github.com/user-attachments/assets/e9f677e3-3e7e-4c23-9650-0ff4d58b022f" />

- A message queue service that allows decoupling of components in a distributed application
- Provides a reliable way to store and retrieve messages between application components ensuring asynchronous (when things happen independently without waiting for each other) communication
- Used when you need to enable communication and coordination between parts of a distributed application
- Suitable for scenarios like handling background jobs, managing tasks asynchronously and facilitating communication between loosely coupled components 
- The equivalent in AWS is Amazon Simple Queue Service (SQS) which provides a fully managed message queue service for decoupling components in a distributed system

### Azure Container Registry (ACR)

<img width="300" height="300" alt="31_container-registry 9ac93f2e9f" src="https://github.com/user-attachments/assets/16aebe80-e07d-4734-a549-e949e6c07b4c" />

### What is ACR?
- A private container image registry in Azure. It stores and manages Docker/container images 
- Like Dockerhub but Azure

### Why is it used
- Security & Access control
  Private by default, Integrates with Azure AD, RBAC and Managed Identities
- Native Azure integration
  Works seamlessly with AKS, Azure App service, Azure container instances and Azure pipelines
- Performance and reliability
  Images are stored close t your azure workloads - faster pulls and less dependency on public registries
- Enterprise features
  Supports image scanning and more

### What it needs to function
- Azure Container Registry resource
- Authentication method
  Azure AD
	Managed Identity
	Service Principal
- Container tooling

## Azure Container Apps (ACA)

<img width="600" height="598" alt="download (4)" src="https://github.com/user-attachments/assets/4236ebce-f872-4195-9a1a-fcd39ab4a124" />

### What is Azure Container Apps?
- A fully managed, serverless container platform for running containerised applications without managing servers or kubernetes directly 

### Why is it used?
- No infrastructure management
  Azure handles nodes, scaling, patching and orchestration - you focus purely on the app
- Built-in autoscaling
  Scales based on HTTP traffic, events or CPU/memory including scale-to-zero
- Microservices & APIs friendly
  Ideal for APIs, background jobs, event driven workloads and lightweight microservices
- Kubernetes-powered, simplified
  Runs kubernetes under the hood but abstracts away K8s complexity
- Cost-efficient
  Pay only for what you use, great for workloads with spiky or unpredictable traffic

### What it needs
- Container image
- Authentication to pull images
- Container App environment (Azure managed)

## Azure Kubernetes Service (AKS)

<img width="600" height="315" alt="download (5)" src="https://github.com/user-attachments/assets/744db560-9dc9-49b6-9a58-156b3a76ba20" />

### What is Azure Kubernetes Service (AKS)?
- Azure’s managed Kubernetes, giving you full control over container orchestration using kubernetes

### Why is it used?
- Full kubernetes control
  Ideal when you need custom networking, storage, security or advanced workloads
- Scalability and reliability
  Handles large-scale production workloads with self-healing and auto-scaling
- Industry-standard orchestration
  Kubernetes skills are portable across cloud providers and on-prem
- Advanced ecosystem
  Supports tools like Ingress Controller, Helm, ArgoCD, Prometheus, grafana etc
- Fine-grained configuration
  More control over networking, node pools, security policies and resource limits

### What it needs
- AKS cluster (control plane managed by Azure)
- Worker nodes (VMs)
- Container images (usually from ACR)
- Kubernetes knowledge



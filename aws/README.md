# AWS 

![IMG_4309](https://github.com/user-attachments/assets/158e7122-b1ef-4310-bfab-935f103d79f7)

## AWS Introduction  
### **AWS Cloud History**  
- Launched internally in 2002  
- 2003 Offered their infrastructure to other businesses, making it one of their core strengths  
- Launched AWS publicly with SQS in 2004  
- Relaunched publicly with SQS, S3 and EC2 in 2006  
- 2007 launched in Europe which gave access to countries  

### **AWS Facts**  
- In 2019 AWS had $35.02 billion in annual revenue  
- AWS accounts for 47% of the market in 2019 (Microsoft is 2nd with 22%)  
- Pioneer and leader of the cloud market for 9 consecutive years  
- Over 1,000,000 active users  

### **AWS Cloud Use Cases**  
Enables you to build sophisticated, scalable applications  
Applicable to a diverse set of industries  
Use cases include:  
- Enterprise IT, backup & storage, big data analytics  
- Website hosting, mobile and social apps  
- Gaming  

Examples of companies that use AWS:  
- Netflix  
- Activision  
- McDonald's  
- Dropbox  

---

## **AWS Global Infrastructure** 🌍

### **AWS Regions**  
- Regions all around the world  
- Names can be us-east1, eu-west-3 etc  
- Backbone of AWS infrastructure  
- A region is a cluster of data centres  
- Most AWS services are region-scoped  

### **How to Choose the Right AWS Region for Your Project**  
- Compliance with data governance and legal requirements: data never leaves a region without your explicit permission  
- Proximity to customers: faster response time, reduced latency  
- Available services within a region: new services and new features in every region  
- Pricing: pricing varies region to region and is transparent in the service pricing page  

### **AWS Availability Zones (AZs)**  
- Each region has many availability zones (usually 3, min is 3, max is 6)  
- Example: eu-west-2a, eu-west-2b, eu-west-2c  
- Each AZ is one or more discrete data centres with redundant power, networking and connectivity  
- Separate from each other so that they are isolated from disasters  
- They are connected with high bandwidth, ultra-low latency networking  

### **Points of Presence (Edge Locations)**  
- Amazon has 400+ points of presence in 90+ cities across 40+ countries  
- Content is delivered to end users with lower latency  
- Faster response time to clients closer  

---

## **Tour of AWS Console** 🖥️

### **AWS Global Services**  
- Identity and Access Management (IAM)  
- Route 53 (DNS service)  
- CloudFront (Content Delivery Network)  
- WAF (Web application firewall)  

Most AWS services are region-scoped (have to choose a specific region when used):  
- Amazon EC2 (Infrastructure as a service)  
- Elastic Beanstalk (Platform as a service)  
- Lambda (Function as a service)  
- Rekognition (Software as a service)  

### **Region Table**  
[https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/)  

### **Console Home**  

<img width="600" alt="Screenshot 2024-11-18 at 20 48 09" src="https://github.com/user-attachments/assets/8ba42914-e722-48a0-83d5-f3ab801c0491">

- **Dashboard Overview**: Quick access to recent services and resources.  
- **Search Bar**: Fast way to find AWS services or resources.  
- **Service Menu**: Lists all AWS services (Compute, Storage, Networking, etc.).  
- **Pinned Services**: Customisable section for frequently used services.  
- **Billing Dashboard**: Overview of costs and usage; access to billing management.  
- **Support Centre**: Access to documentation, support plans, and troubleshooting.  
- **Global Navigation**: Switch regions, manage accounts, and set preferences.  
- **Notifications**: Alerts on service updates and changes.  


**Ensure that when creating an account you add a new user other than the root user.**  
This is as it is not good practice to use the root user!  
Also, add MFA to improve security and create budgets to save costs!


## **IAM (Identity and Access Management)** 🔑

### **User and Groups**  
- Root account is the master key, should never use it for day-to-day tasks  
- Users are individuals or services that need access to AWS, each user gets their own login and can have few permissions  
- Groups - a team of users  
- Users don’t have to belong to a group and a user can belong to multiple groups  

### **Permissions**  
Users and groups can be assigned JSON documents called policies  
These policies define the permissions of the users  
In AWS, you apply the least privilege principle, don’t give more  

**Example of JSON document**  

 <img width="563" alt="Screenshot 2024-11-18 at 20 49 05" src="https://github.com/user-attachments/assets/bd80577c-fddb-408d-85ca-44b00c83b581">


### **Policies Inheritance**  
How permissions are passed down to users and their groups  
- Inline policies - super specific to a user and are not shared with the groups  

### **Policies Structure**  
Consists of:  
- **Version**: policy language version, always include “2012-10-17”  
- **Id**: an identifier for the policy (optional)  
- **Statement**: one or more individual statements (required)  
  - **Sid**: an identifier for the statement (optional)  
  - **Effect**: whether the statement allows or denies access (Allow, Deny)  
  - **Principal**: account/user/role to which this policy applied to  
  - **Action**: list of actions this policy allows or denies  
  - **Resource**: list of resources to which the actions apply  
  - **Condition**: conditions for when this policy is in effect (optional)
 
<img width="563" alt="Screenshot 2024-11-18 at 20 49 45" src="https://github.com/user-attachments/assets/693d6b89-25fe-426a-b34f-ac00608a49c0">

### **Password Policy**  
- Strong passwords = higher security for your account  
- In AWS, you can set up a password policy:  
  - Set a minimum password length  
  - Require specific character types: including uppercase letters, lowercase letters, non-alphanumeric characters  
  - Allow all IAM users to change their own passwords  
  - Require users to change their password after some time (password expiration)  
  - Prevent password re-use  

---

## **MFA, Multi-Factor Authentication** 🔐

Users have access to your account and can possibly change configurations or delete resources in your AWS account.  
MFA protects your root accounts and IAM users.  
Main benefit of MFA is that if a password is stolen or hacked, the account is not compromised.  

<img width="981" alt="Screenshot 2024-10-15 at 12 28 26" src="https://github.com/user-attachments/assets/ce01b7df-2588-4cb6-9c7e-07a3b06f28f3">

**MFA devices options in AWS**  

<img width="1366" alt="Screenshot 2024-10-15 at 12 31 34" src="https://github.com/user-attachments/assets/52f7b900-332a-4918-b34e-503a0bfbf100">

### **How Can Users Access AWS?**  
To access AWS, you have three options:  
- AWS Management Console (protected by password + MFA)  
- AWS Command Line Interface (CLI): protected by access keys  
- AWS Software Developer Kit (SDK) - for code: protected by access keys  

Access Keys are generated through the AWS Console  
Users manage their own access keys  
Access Keys are secret, just like a password. Don’t share them  
- **Access Key ID ~= username**  
- **Secret Access Key ~= password**  

**Access Keys Example**  

<img width="1366" alt="Screenshot 2024-10-15 at 12 41 53" src="https://github.com/user-attachments/assets/20a1c0c7-ad88-439b-b150-29c41a53b193">

## **AWS CLI, Command Line Interface** 🖱️

### **What is AWS CLI?**  
AWS CLI is a powerful tool that allows you to interact with AWS on your terminal.  

### **Benefits of AWS CLI:**  
- Allows you to interact with AWS on terminal  
- Can use resources on terminal  
- Allows you to develop scripts to manage resources  
- Open-source [AWS CLI GitHub](https://github.com/aws/aws-cli)  

---

## **AWS SDK, Software Development Kit** 📦

### **What is AWS SDK?**  
A handy tool that lets you interact with AWS services programmatically by using your favourite programming language.  
- Enables you to access and manage AWS services programmatically  
- Embedded within your application  
- Supports SDKs (Javascript, Python, PHP, NET, Ruby, JAVA, Go, Node.js, C++, etc.)  
- Mobile SDKs (Android, iOS …)  
- IoT Devices SDKs (Embedded C, Arduino …)  

**Example**: AWS CLI is built on AWS SDK for Python AWS SDK  

---

## **How to Install AWS CLI** 💻

1. Search on browser “Install AWS CLI” and tap the first page that comes up.

<img width="745" alt="Screenshot 2024-10-15 at 12 58 50" src="https://github.com/user-attachments/assets/1ee86519-95a4-48fa-aa37-2797db28f7fe">

2. Select the desired OS system to download on (In my case MAC) and download.

<img width="745" alt="Screenshot 2024-10-15 at 13 00 48" src="https://github.com/user-attachments/assets/f0334242-f882-4baa-9c5d-08d7a3d72b29">

3. Once linked, tap the installer and choose your preferences.
 <img width="617" alt="Screenshot 2024-10-15 at 13 09 41" src="https://github.com/user-attachments/assets/aa6098d0-d1d1-494f-85b7-eae0a93ee034">

5. Head onto the terminal and type the following command to check that AWS is installed:  

<img width="572" alt="Screenshot 2024-10-15 at 13 28 26" src="https://github.com/user-attachments/assets/e974d685-d1c7-46f8-a480-97b5359ec23a">

5. To configure AWS CLI, head to AWS Console, tap Profile and tap Security Credentials.

<img width="748" alt="Screenshot 2024-10-15 at 13 32 52" src="https://github.com/user-attachments/assets/44f4d593-f874-4d6e-88b4-3d3a85f9c80c">

6. Scroll down to **Access Keys** and create an access key.

<img width="748" alt="Screenshot 2024-10-15 at 13 34 35" src="https://github.com/user-attachments/assets/aaf2558e-2999-4224-8fbf-8c6e44b06562">

7. Then on the terminal type the following command and configure AWS to your likings, using your access Key and secret access key:
```bash
aws configure
```
And use the following commands to see user info:  
```bash
aws sts get-caller-identity
aws iam list-users
```

# **IAM Roles for Services** 🛠️

Some AWS services will need to perform actions on your behalf and to do so we will assign permissions to AWS services with IAM roles.

Common rules:
- EC2 Instance roles
- Lambda function roles
- Roles for CloudFormation


## **IAM Security Tools** 🛡️
These help you manage your AWS users and their performances.

- **IAM Credentials Report** (account-level)  
  Report that list your account’s users and the status of their various credentials

- **IAM Access Advisor** (user-level)  
  Access advisor shows the service permissions granted to a user and when those services were last accessed  
  You can use this information to revise your policies


## **IAM Guidelines** 📋
- Don’t use the root account except for AWS account setup
- One physical user = One AWS user
- Assign users to groups and assign permissions to groups
- Create a strong password policy
- Use and enforce the use of Multi-factor authentication (MFA)
- Create and use Roles for giving permissions to AWS services
- Use access keys for programmatic access (CLI/SDK)
- List permissions of your account using IAM credentials report and IAM access advisor
- Never share IAM users & Access keys


# **Amazon Compute** 💻

Amazon Compute refers to the set of cloud-based services that provide scalable and flexible computing power in the AWS ecosystem. These services allow users to run virtual machines, containers, or serverless code without having to manage physical hardware. Key services under Amazon Compute include:

## **Amazon EC2** 🌐  
EC2 = Elastic Compute Cloud = Infrastructure as a service  
Renting virtual machines or services from AWS  
One of the most popular AWS services  
Mainly consists of:
- Renting virtual machines (EC2)
- Storing data on virtual drives (EBS)
- Distributing load across machines (ELB)
- Scaling the services using an auto-scaling group (ASG)

A fundamental tool that helps you understand how the cloud works


## **EC2 sizing & configuration options** 🔧  
- Operating system (os): Linux, Windows or MAC OS
- How much compute power & cores (CPU)
- How much random-access memory (RAM)
- Each storage space:
  - Network-attached (EBS & EFS)
  - Hardware (EC2 Instance store)
- Network card: speed of the card, Public IP address
- Firewall rules: security group
- Bootstrap script (configure at first launch): EC2 User data


## **EC2 User Data** 💾  
It is possible to bootstrap our instances using an EC2 User data script.  
Bootstrapping means launching commands when a machine starts.  
That script is only run once at the instance first start.  
EC2 user data is used to automate boot tasks such as:
- Installing updates
- Installing software
- Downloading common files from the internet
- Anything you can think of

The EC2 User Data Script runs with the root user, meaning that you need to be careful with what you include in the script.

## **Using the EC2 User data** ⚙️

First head over to EC2 on the console and tap instances on the left side.  

<img width="736" alt="Screenshot 2024-10-15 at 18 51 49" src="https://github.com/user-attachments/assets/f7379d03-9343-4fed-9625-45f55a7e0b4b">

Then you:  
- Name your instance.  
- Choose an Amazon Machine Image (AMI), e.g. Amazon Linux 2.  
- Select an instance type, e.g. t2.micro (free tier).  
- Create or select a key pair for SSH access.  
- Configure security group: allow SSH (port 22) from your IP.  
- Click Launch Instance.  
- View your instance under Instances and use the public IP to connect.  

And here is my EC2 instance launched. (Not posted for security reasons).

## **EC2 Instances Types** 🖥️  

- **General purpose**: Your go-to well-rounded instances, work for a lot of use cases  
- **Compute optimised**: When lots of processing power is needed these are useful as it gives you extra CPU for tasks like heavy calculations, batch processing or high-performance computing  
- **Memory optimised**: When an application needs a lot of memory or RAM these are useful  
- **Storage optimised**: Designed for fast and high throughput storage (meaning that when dealing with data that require quick access to storage)  
- **Accelerated Computing**: Uses hardware like GPU or FPGAs to boost performance for tasks like machine learning  
- **HPC (High performance Computing) Optimised**: designed for intensive computing tasks that require a lot of powerful processing

<img width="422" alt="Screenshot 2024-10-16 at 16 20 23" src="https://github.com/user-attachments/assets/9cdd3436-29e0-4eb6-b7ab-3b960559630f">

Tells you your general type or purpose of your instance  
- m = stands for general purpose  
- c = compute optimised  
- r = memory optimised  
- t = general ones  
5 - Generation of the instance (the higher the number, the better due to upgrades)  
2xlarge - Size within the instance class (the bigger the size, the more resources)


# **Running my first web server on an EC2 Instance demo** 🌍

I started off by creating a normal EC2 instance running on Amazon Linux and creating a key pair for it. 

<img width="746" alt="Screenshot 2024-10-16 at 16 37 38" src="https://github.com/user-attachments/assets/3c7740e4-4904-4b45-abbc-7f330270dd2f">

Then I continued on to write a script for it in my advanced settings. 

<img width="746" alt="Screenshot 2024-10-16 at 16 37 38" src="https://github.com/user-attachments/assets/d839626c-6ed5-450f-a84d-7923332b1935">

I used a shebang line to show that it is a bash script.

```bash
yum update -y = Updating the system
yum install -y httpd = Installing httpd
systemctl start httpd = Starting httpd server
systemctl enable httpd = Enabling the server
echo "<h1> Hello Coerce from $(hostname -f)</h1>" > /var/www/html/index.html = Echoing a html line that will come up on my web page
```

And it works as this is displayed:

<img width="518" alt="Screenshot 2024-11-18 at 21 08 01" src="https://github.com/user-attachments/assets/74e27587-3080-449e-ad56-1c7b02b76f88">


# **Security Groups** 🔒

## **What are security groups in AWS?**  
* SGs are the fundamental of network security in AWS.  
* They control how traffic is allowed into or out of our EC2 instances.  
* SGs only contain allow rules.  
* SGs rules can reference by IP or by security group.  
* SGs control access to ports on instances.  
* SGs control inbound network (from other to the instance) and outbound network (from the instance to other).  
* SGs regulate authorised IP ranges - IPv4 & IPv6.  
* Good practice to keep SGs as tight as possible.

<img width="456" alt="Screenshot 2024-10-17 at 18 42 43" src="https://github.com/user-attachments/assets/14d1fd29-2f7a-4188-89d7-f71eacfbb92a">

**In this diagram:**  
* Security group 1 is filtering traffic that you want allowed into the EC2 instance.  
* Your computer has authorised access to port 22 meaning that it can gain access, however, the other computer does not have access so it will be declined.  
* Security group 2 lets out filtered outbound traffic to any port on the internet.


## **Security Group Good to Know**  
- Can be attached to multiple instances  
- Locked down to a region/VPC combination  
- Does live “outside” the EC2 - if traffic is blocked the EC2 instance won’t see it  
- Good to maintain one separate security group for SSH access  
- If application is not accessible (time out), then it is due to a security group issue  
- If application gives a “connection refused” then it's an application error or it's not launched  
- All inbound traffic is blocked by default  
- All outbound traffic is authorised by default

## **A feature in AWS - Referencing other security groups** 🔐

<img width="1264" alt="Screenshot 2024-10-17 at 19 59 25" src="https://github.com/user-attachments/assets/2571a48d-065b-41f2-8cd2-e4f6c5510403">

* Normally SGs define rules using IP addresses, referencing other SGs allows you to control access between instances and those instances might change IPs.  
* Here you have an instance using SG 1 to manage its inbound traffic and instead of having rules to allow in certain traffic, it references other SGs (here being SG 2 and SG 3).  
* This makes managing security easier as it saves time.

## **Classic Ports to know** ⚡

* Often when working with SGs in AWS you will be asked to block certain ports.  
* Each port corresponds to a certain service or protocol.  
* Here are important ones:

<img width="1136" alt="Screenshot 2024-10-17 at 20 07 40" src="https://github.com/user-attachments/assets/54ba2b80-1464-48c7-a959-2aee95b9a53e">


# **EC2 Instances Purchasing Options** 💰

These options will help you save finance and maximise usage while doing so.

- **On-demand instances** - short workload, predictable pricing, pay by second  
- **Reserved (1 & 3 Years)**:  
  - Reserved instances - long workloads  
  - Convertible Reserved instances - long workloads with flexible instances  
- **Savings Plans (1 & 3 Years)** - commitment to an amount of usage, long workload  
- **Spot instances** - short workloads, cheap, can lose instances (less reliable)  
- **Dedicated Hosts** - book an entire physical server, control instance placement  
- **Dedicated Instances** - no other customers will share your hardware  
- **Capacity Reservations** - reserve capacity in a specific AZ for any duration

# **Networking in AWS** 🌐

## **IPv4 vs IPv6** 🌍  
IP addresses are, of course, crucial for identifying devices on the network. IPs have two types: IPv4 and IPv6.

### **IPv4**  
* Example: `10.160.10.240`  
* Still the most common format used online  
* Allows for 3.7 billion different addresses in the public space  
* IPv4 follows the format: `[0-255].[0-255].[0-255].[0-255]`.

### **IPv6**  
* Example: `3ffe:1900:4545:3:200:8ff:fe21:67cf`  
* Newer and solves problems for the Internet of Things (IoT) 🌐  

## **Private vs Public IP (IPv4)**  
<img width="1378" alt="Screenshot 2024-10-20 at 16 48 04" src="https://github.com/user-attachments/assets/e3d25659-5efc-4535-9dfd-c7b7f3a7e8ce">

* How the concept of the network layer in the OSI model plays out here as traffic is being directed to different networks.  
* Here you have Company A & B, both having their own private networks using private IPv4s. These private IPs are not routable on the public internet, meaning they cannot communicate directly with external web servers. To reach the wider internet, they have an internet gateway.  
* The internet gateway assigns private IPs to the devices (like the router), and the gateway acts as a middleman, translating those private IP addresses into public IPs.  
* This allows them to communicate with web servers that have their own IPs.  
* Private IPs can be reused across the internet, but public IPs are globally unique.

## **Private vs Public IP Address Differences**  

<img width="1378" alt="Screenshot 2024-10-20 at 16 56 39" src="https://github.com/user-attachments/assets/f4d1654d-2198-4124-b59f-d3d31a7314b0">

### **Elastic IPs**  
* AWS allocates public IPs dynamically. When an EC2 instance is stopped and restarted, it can be assigned a new public IP.  
* If you need to have a fixed public IP for your instance, you need an Elastic IP.  
* An Elastic IP is a public IPv4 IP you own as long as you don’t delete it.  
* You can attach it to one instance at a time.  
* Very useful if you have external services that need to point to your instance using an Elastic IP. Keeping the same IP ensures that there is no disruption when restarting instances.

### **How to assign your EC2 instance an Elastic IP**  
Head over to elastic IPs under *network & security* on the left-hand side.

<img width="745" alt="Screenshot 2024-10-20 at 17 14 19" src="https://github.com/user-attachments/assets/0bffc7e2-0504-4922-be56-0433ff6efcbf">

Then keep settings on default, and Amazon will automatically give you an IP address.

<img width="820" alt="Screenshot 2024-10-20 at 17 16 42" src="https://github.com/user-attachments/assets/daa3dc70-f31c-41b5-ba78-4906b8368027">

Ensure that when setting up an EC2 instance, you disable the factor that allows it to have a public IP and also allocate it to the Elastic IP after!

### **When to use Elastic IPs:**  
- With an Elastic IP address, you can mask the failure of an instance or software by rapidly remapping the address to another instance in your account.  
- You can only have 5 Elastic IPs in your account (you can ask AWS to increase that).  
- Overall, try to avoid using Elastic IPs:  
   - They often reflect poor architectural decisions.  
   - Instead, use a random public IP address and register a DNS name to it.  
   - Use a load balancer and don’t use public IPs.

## **What's an EBS Volume?**  
A network drive that you can attach to your EC2 instances, like a virtual storage device that lives in your cloud and connects to your instance.  
Allows your instances to persist data, even after their termination.  
They are bound to a specific AZ.  
Like a ‘network USB stick’ 🖇️.  
30GB of free EBS storage of type General Purpose (SSD) or Magnetic per month.

**Benefits of EBS:**  
- Data persistence: your data stays safe even if it's terminated.  
- Storage options.

## **AMI Overview**  
* **AMI** = Amazon Machine Image  
* A pre-configured template that contains all the information needed to launch and run an instance such as your OS, software…  
* AMIs are a customisation of an EC2 instance.  
* You add your own software, configuration, operating system, monitoring.  
* Faster boot/configuration time as all your software is pre-packaged.  
* AMIs are built for a specific region (and can be copied across regions).  
* You can launch EC2 instances from:  
- A Public AMI: AWS provided  
- Your own AMI: You make and maintain them yourself  
- An AWS Marketplace AMI: An AMI someone else made and potentially sells  

**Benefits of AMI:**  
- Makes life easier as it allows you to automate setup of your EC2 instances.  
- Once configured, you can launch multiple instances with the same configuration, saving time.

# **Amazon EFS - Elastic File System** 💾

## **What is Amazon EFS?**  
* Amazon’s managed solution for shared file storage.  
* EFS is a managed NFS (Network File System) that can be mounted on many EC2 instances.  
* ‘A network drive that all your instances can access’.  
* EFS works with EC2 instances in multi-AZs.  
* Highly available, scalable, expensive (3x GP20), pay per use.
<img width="714" alt="Screenshot 2024-10-20 at 18 26 05" src="https://github.com/user-attachments/assets/741ed06f-396d-4c8c-9448-9a240b381508">


# **Key Concepts in Cloud, Scalability & High Availability** 🚀

## **Scalability**  
* Means that an application/system can handle greater loads by adapting. Scalability is linked but different from High Availability.  
* Here are two kinds of scalability:  
- **Vertical Scalability**: When more power is added to the system, the machine gets more powerful too (e.g., increase in RAM).  
- **Horizontal Scalability (= elasticity)**: More instances of resource to handle the load. Instead of making one server bigger, you add more servers.
<img width="1195" alt="Screenshot 2024-10-20 at 18 39 31" src="https://github.com/user-attachments/assets/1855d5ea-30d0-4f0e-b26b-635c6a97e286">


## **High Availability**  
Refers to running your application or system in multiple different locations so that if one fails, another part can take over.  
HA usually goes hand in hand with horizontal scaling.  
Can be passive or active.

## **High Availability & Scalability for EC2**  
Examples:
<img width="1027" alt="Screenshot 2024-10-20 at 19 04 24" src="https://github.com/user-attachments/assets/6649cde1-007c-4ca4-958d-5023ab60c4cc">

# **Load Balancing** ⚖️

<img width="782" alt="Screenshot 2024-10-20 at 19 10 17" src="https://github.com/user-attachments/assets/474514fd-8fe2-485c-a203-087778d27e98">

## **What is Load Balancing?**  
* Servers that forward traffic to multiple servers (e.g., EC2 instances) downstream.  
* Distributes requests to different servers.  
* Sits between your users and EC2 instances.  
* Constantly checks which instances are healthy and directs traffic to the ones that can handle it.  
* Key to ensuring that customers get the best satisfaction.  
* A reverse proxy in AWS load balancing is a server that sits between client requests and backend servers, forwarding client requests to the appropriate server and returning the server's response back to the client.

## **Why Use a Load Balancer?**  
- Spread load across multiple downstream instances, preventing instances from getting overloaded.  
- Expose a single point of access (DNS) to your application.  
- Handle failures of downstream instances.  
- Do regular health checks on your instances.  
- Provide SSL termination (HTTPS) for your websites.  
- Enforce stickiness with cookies.  
- High availability across zones.  
- Separate public traffic from private traffic.

## **Why Use an Elastic Load Balancer?**  
* An Elastic Load Balancer is a managed load balancer.  
* AWS guarantees that it will be working.  
* AWS takes care of upgrades, maintenance, and high availability.  
* AWS provides only a few configuration knobs.  
* It costs less to set up your own load balancer, but it will be a lot more effort on your end.  
* It is integrated with many AWS offerings/services:  
- EC2, EC2 Auto Scaling Groups, Amazon ECS  
- AWS Certificate Manager (ACM), CloudWatch  
- Route 53, AWS WAF, AWS Global Accelerator

## **Health Checks**  
Enable the load balancer to know if instances it forwards traffic to are available to reply to requests.  
The health check is done on a port and a route (`/health` is common).  
If the response is not `200 (OK)`, then the instance is unhealthy.

<img width="699" alt="Screenshot 2024-10-20 at 19 31 59" src="https://github.com/user-attachments/assets/bc2c2431-5f2c-4861-9aca-a497d63bbf2a">

## **Types of Load Balancers on AWS**  
AWS has 4 kinds of managed load balancers:  
- **Classic Load Balancer (v1 - old generation)** - 2009 - CLB - HTTP, HTTPS, TCP, SSL (secure TCP)  
- **Application Load Balancer (v2 - new generation)** - 2016 - ALB - HTTP, HTTPS, WebSocket  
- **Network Load Balancer (v2 new generation)** - 2017 - NLB - TCP, TLS (secure TCP), UDP  
- **Gateway Load Balancer** - 2020 - GWLB - Operates at Layer 3 (Network layer) - IP Protocol  

Overall, it is recommended to use the newer generation load balancers as they provide more features.  
Some load balancers can be set up as internal (private) or external (public) ELBs.

## **Load Balancer Security Groups**  
Very important to have the right security group configuration for your load balancer to ensure that traffic is routed safely.  
Secures traffic flow.

**Example:**  
<img width="1200" alt="Screenshot 2024-10-20 at 19 51 37" src="https://github.com/user-attachments/assets/a3fb4fee-d672-4cc3-930f-62684ed73294">

### **Application Load Balancer (ALB)** 💻

**ALBs operate at layer 7 (HTTP layer)**, focused on the application layer - specifically HTTP & HTTPS traffic  
* Load balancing to multiple HTTP applications across machines (target groups)  
* Load balancing to multiple applications on the same machine (e.g. containers)  
* Support for HTTP/2 and WebSocket  
* Support redirects (from HTTP to HTTPS for example)  
* Routing tables to different target groups (for example to EC2s)  
* Routing based on path in URL (osman.com/users, osman.com/posts)  
* Routing based on hostname in URL (blog.osman.com, news.osman.com)  
* Routing based on Query string, Headers (osman.com/users?id=456&order=false)  
* ALB are a great fit for micro services & container-based application (example: Docker & Amazon ECS)  
* Has a port mapping feature to redirect to a dynamic port in ECS  
* In comparison, you need multiple classic load balancers per application

<img width="1200" alt="Screenshot 2024-10-20 at 20 04 47" src="https://github.com/user-attachments/assets/74be5802-27dc-4171-b1ad-bb5d1df9a376">

#### **In this diagram:**  
* There's an external ALB that sits in front of the applications
* The users are sending HTTP requests to the ALB and the ALB is sending them requests to those specific target groups  
* A target group could or will be aligned with a specific task (for example, target group 1 could be for login and 2 could handle product searches)  
* ALB also uses the health check to check on the instances  
* ALB is built for HTTP and HTTPS traffic


#### **ALB (Target Groups)**

**Target groups** are groups of resources like EC2 instances, lambda functions … that your ALB routes traffic to  
- EC2 instances (can be managed by an Auto Scaling Group) - HTTP  
- ECS tasks (managed by ECS itself) - HTTP  
- Lambda functions - HTTP request is translated into JSON event  
- IP Addresses - must be private IPs  
ALB can route to multiple target groups  
Health checks are at the target group level

#### **ALB Good To Knows** 📚  
- Fixed host name (XXX.region.elb.amazonaws.com)  
- The application servers don’t see the IP of the client directly  
- The true IP of the client is inserted in the header X-Forwarded-For  
- We can also get Port (X-Forwarded-Port) and proto (X-Forwarded-Proto)  

<img width="606" alt="Screenshot 2024-10-20 at 20 19 41" src="https://github.com/user-attachments/assets/cf8ecf58-abe8-4d4a-98f7-d20170ce3cef">


### **Network Load Balancer** 🌐

#### **What are Network Load Balancers (NLBs) and what are they used for?**  
* NLBs are optimised for handling extreme performance and high traffic with low latency  
* NLB operates at Layer 4 (Handles TCP & UDP) and allow to:  
- Forward TCP & UDP traffic to your instances  
- Handle millions of requests per second  
- Less latency - 100ms (vs 400 ms for ALB)  
- Has one static IP per AZ and supports assigning Elastic IP (helpful for whitelisting specific IP)  
- Used for extreme performance, TCP or UDP traffic  
- Not included in the AWS free tier


#### **Network Load Balancer - TCP (Layer 4)**  
* Layer 4 is the transport layer  
* The job of the NLB is to handle traffic at this level, meaning it routes raw TCP or UDP traffic to your instances without getting involved in the high-level protocol in layer seven like HTTP or HTTPS  
* NLB focuses on speed and efficiency

<img width="1299" alt="Screenshot 2024-10-20 at 20 31 50" src="https://github.com/user-attachments/assets/7b96c527-cdc4-4f51-be91-b67d9fc38347">

### **Sticky sessions (Session Affinity)** 🔒

#### **What are sticky sessions and what do they do?**  
* When load balancers are used, its job is to spread traffic across multiple EC2 instances or even other targets but sometimes you want the user or the client to consistently connect to the same instance, especially when user has ongoing user data  
* Sticky sessions ensure that the client is always routed to the same instance behind a load balancer, literally sticking a client to a server  
* Works for CLB, ALB & NLB  
* For both CLB & ALB, the “cookie” used for stickiness has an expiration date you control  
* **Use Case**: Ensure that the user doesn’t lose his session data  
* Enabling stickiness may bring imbalance to the load over the backend EC2 instances  
* Used mainly for application-based apps, not speed and efficiency-based! 

<img width="452" alt="Screenshot 2024-10-20 at 20 42 23" src="https://github.com/user-attachments/assets/0dff906d-4013-4cfe-b647-0e0e858a6772">

### **SSL/TLS** 🔐

#### **What is an SSL certificate?**  
* Allows traffic between your clients and your load balancer to be encrypted in transit (in-flight encryption)  
* SSL refers to Secure Sockets Layer, used to encrypt connections  
* TLS refers to Transport Layer Security which is a newer version  
* TLS certificates are mainly used now but still refer to it as SSL  
* Public SSL certificates are issued by Certificate Authorities (CA)  
* Comodo, Symantec, Godaddy, GlobalSign, Digicert, Letsencrypt etc...  
* SSL certificates have an expiration date (you set) and must be renewed

#### **How Load balancers handle SSL certificates?**  
* LBs handle SSL certificates to keep everything secure  
* Load balancer is technically the middle man that’s making sure traffic between your users and your instances are encrypted, this is done using an X.509 certificate (an SSL or TLS certificate)  
* AWS make this easy by allowing us to manage these certificates using a service called AWS Certificate Manager (ACM)  
* You can also create and upload your own certificates alternatively  
* HTTPs listener (How we ensure traffic is encrypted):  
- You must specify a default certificate  
- You can add an optional list of certs to support multiple domains  
- Clients can use SNI (Server Name Indication) to specify the hostname they reach  
- Ability to specify a security policy to support older version of SSL/TLS (legacy clients)

### **SSL - Server Name Indication (SNI)**

#### **What is SNI and what does it do?**  
* If you wanted to host multiple websites on the same server but with different SSL certificates, it would be difficult. The introduction of SNI fixes this by allowing multiple SSL certificates onto one web server (to server multiple websites)  
* A newer protocol, requires the client to indicate the hostname of the target server in the initial SSL handshake  
* The server will then find the correct certificate or return the default one  
* Only works for ALB & NLB (newer generation), Cloudfront  
* Does not work for CLB (older gen)


### **Elastic Load Balancers - SSL**

#### **How SSL certificates work around different Load Balancers**  
- **Classic Load Balancer (v1)**  
  Support only one SSL certificate  
  Must use multiple CLB for multiple hostname with multiple SSL certificates  
- **Application Load Balancer (v2)**  
  Supports multiple listeners with multiple SSL certificates (More convenient and cheaper)  
  Uses server name indication (SNI) to make it work  
- **Network Load Balancer (v2)**  
  Supports multiple listeners with multiple SSL certificates  
  Uses server name indication (SNI) to make it work


### **Connection Draining** ⏳

In AWS this is also known as the deregistration delay for the load balancer like ALB and NLB. When an instance is unhealthy or scaling down you do not want to get rid of it immediately, this process doesn't cut off any ongoing connection immediately.

- **Connection draining** - for CLB  
- **Deregistration Delay** - for ALB & NLB  
* Time to complete in-flight requests while the instance is deregistering or unhealthy  
* Stops sending new requests to the EC2 instance which is deregistering but waits for the actual request to finish up  
* Between 1 to 3600 seconds (default: 300 seconds)  
* Can be disabled (set value to 0)  
* Set to a low value if your requests are short


# **Auto Scaling Group** 💡

### What’s an Autoscaling group?
* In real life, the load on your websites and application can change, and in the cloud, you can create and get rid of servers quickly.  
* The goal of an ASG (Auto Scaling Group) is to:  
- **Scale out** (add EC2 instances) to match an increased load  
- **Scale in** (remove EC2 instances) to match a decreased load  
- Ensure we have a minimum and a maximum number of EC2 instances running  
- Automatically register new instances to a load balancer  
- Re-create an EC2 instance in case a previous one is terminated (unhealthy)

### How do ASGs manage your systems automatically?  
<img width="700" alt="Screenshot 2024-11-13 at 01 18 20" src="https://github.com/user-attachments/assets/7716dab3-fb46-4765-8e1f-c0f3d69a1298">

* This diagram shows how the ASGs handle the scaling process.  
* At the top, there are a group of EC2 instances. Your ASG operates based on 3 things; **minimum capacity**, **desired capacity**, and **maximum capacity**.  
- **Minimum capacity** is the least number of EC2 instances you always want running, even during low traffic times.  
- **Desired capacity** is the target number of instances in normal load; the ASG will try to maintain this number.  
- **Maximum capacity** is the maximum amount your ASG can scale up to during high traffic periods.  

When demand for your EC2 instances goes up, ASG will scale out and add more instances up to the maximum capacity to handle the increase in demand.  

# **Auto Scaling Group with Load balancer** 🚀
<img width="700" alt="Screenshot 2024-11-13 at 01 31 02" src="https://github.com/user-attachments/assets/08eea9ff-44d6-44f5-b3a2-712def0bdac4">

* Here, you have users trying to access the EC2 instance with their data and are sending traffic to the application.  
* The **ELB** plays a role here of distributing traffic to the EC2 instances, it spreads the load so that no single EC2 instance gets overwhelmed, and it also continuously checks the health of the EC2 instances.  
* If one is unhealthy, the Load balancer will route traffic away from the faulty one until it's back online or replaced by an ASG.  
* ASG here adjusts the number of EC2 instances to match the current load. For example, when a website is experiencing heavy traffic like on a sales day, the ASG will scale out and add more instances to handle the load, and if traffic decreases, it will scale in, reducing the number of instances to save costs.  
* This makes the whole system incredibly flexible.  
* You can also add in **AMIs**; you can create your own custom AMI which contains your pre-configured software. When the ASG scales out, it will launch new instances using this AMI.

### Auto Scaling Group attributes  
The **launch template** plays a big role here. This is a massive attribute as it ensures that when the ASG adds or removes EC2 instances, they are set up with the same configuration:  
- AMI + Instance type  
- EC2 user Data  
- EBS volumes  
- Security groups  
- SSH Key Pair  
- IAM Roles for your EC2 instances  
- Network + Subnets Information  
- Load balancer information  
- Min Size/ Max Size/ Initial Capacity  
- Scaling Policies

### Auto Scaling - CloudWatch Alarms & Scaling  
* This is where you see monitoring and auto scaling together.  
* These alarms keep an eye on certain metrics like CPU usage, memory, or any customer metrics you define.  
* An alarm monitors a metric, and once it is triggered, AWS can take action.  
* Metrics such as **Average CPU** are computed for the overall ASG instances.  
* Based on the alarm:  
- We can create scale-out policies (increase the number of instances)  
- We can create scale-in policies (decrease the number of instances)  
* This saves time as it ensures that there are the right number of instances on the system at the right time without you having to lift a finger.

### Auto Scaling Groups - Scaling Policies  
* This is how you can control when and how ASG reacts to changes in demand.
* Here are three main types of dynamic scaling policies:  
1. **Target Tracking Scaling**  
   - Simple to set up  
   - Maintains your instances at a certain average load  
   - Example: I want the average ASG to stay around 35%.  
2. **Simple/ Step Scaling**  
   - When a CloudWatch alarm is triggered (example CPU > 70%), then add 2 units  
   - When a CloudWatch alarm is triggered (example CPU < 30%), then remove 1 unit  
   - Gives you more control and is great for dynamic workloads  
3. **Scheduled Scaling**  
   - Anticipate a scaling based on known patterns  
   - Example: Increase the min capacity to 10 at 5pm on Fridays

# **Containers on AWS** 🐳

### What is Docker?  
* A software development platform to deploy apps.  
* Apps are packaged in containers that can be run on any OS.  
* Apps run the same, regardless of where they’re run.  
* A container is a lightweight, portable box that contains all your app's information.

### Docker on an OS  

<img width="700" alt="Screenshot 2024-11-13 at 17 17 31" src="https://github.com/user-attachments/assets/6c2a6a14-6472-4249-8205-13f4e3fceac4">

* Here Docker is running on a local machine.  
* The server (EC2 instance) is the initial server being used and has Docker as its engine.  
* Instead of multi-applications directly on the server’s OS, Docker allows us to package and run each application in a container (each box here represents a container that's running applications like Java, Nginx), and all containers are isolated from each other.

### Where are Docker images stored?  
- Docker images are stored in Docker repositories  
- Can be stored on Docker Hub  
- Can be stored on Amazon ECR

### Docker vs Virtual Machines  
Both are compared as they allow us to run applications in isolated environments.  
- **VMs** are full-fledged virtual systems that mimic real hardware and run on their own OS, like running multiple computers on one server.  
- **Docker** uses containers, and they share the host’s kernel of the OS, which makes them much lighter and easier to deliver.

### What Docker needs to run  
- Docker file  
- Docker build and Docker run

### Container-related services on AWS  

<img width="192" alt="Screenshot 2024-11-13 at 17 39 16" src="https://github.com/user-attachments/assets/f15aa8f2-d598-481f-bd47-33a42b21f683">

**Amazon Elastic Container Service (Amazon ECS):**  
- Amazon’s own container platform  
- A fully managed service that allows you to run Docker containers without needing to install and manage orchestration software  
- You can define how many containers to run, what images to use, how they should interact, all through a simple interface.  

**Amazon Elastic Kubernetes Service (Amazon EKS):**  
- Amazon’s managed Kubernetes (open-source)  
- Amazon offers a way to use Kubernetes without managing or controlling it yourself.  
- You can take advantage of all Kubernetes features like load balancing and scaling while AWS handles the management.  

**AWS Fargate:**  
- Amazon’s own serverless container platform  
- Works with both ECS & EKS  
- Fargate removes the need for you to manage service or EC2 instances; you just define the task, and Fargate provisions the infrastructure automatically.  
- A great option when you don’t want to worry about managing the underlying infrastructure for your containers.

**Amazon ECR:**  
- A container image repository where you can store, manage, and retrieve your Docker images.

# **Amazon Elastic Container Service (ECS)** 🔧

## **Amazon ECS - EC2 Launch Type**

ECS servers allow you to run and manage containers on AWS. ECS ensures that it is running, available, and makes it scale up or down as needed.  

<img width="371" alt="Screenshot 2024-11-13 at 20 02 33" src="https://github.com/user-attachments/assets/e01ca985-feba-4c51-a7ec-0bf3891591c4">

**ECS = Elastic Container Service**  
* Launch type means you are responsible for the infrastructure.  
* Launch Docker containers on AWS = Launch ECS Tasks on ECS clusters.  
* EC2 instances are where the containers will run.  
* **EC2 Launch Type:** You must provision & maintain the infrastructure (the EC2 instances).  
* Each EC2 instance must run the ECS agent to register in the ECS cluster.  
* The agent is what registers the instance in the ECS cluster (the middle man that keeps everything connected).  
* AWS ECS takes care of starting/stopping containers.  
* Great if you want more control of your instances, like customisation.

## **Amazon ECS - Fargate Launch Type**

<img width="301" alt="Screenshot 2024-11-13 at 20 17 26" src="https://github.com/user-attachments/assets/78674bd2-7484-422b-8cdd-944fdf52f0be">

- No infrastructure needed  
- Launch Docker container on AWS  
- You do not provision the infrastructure (no EC2 instances to manage)  
- It’s all **serverless!** This means you don’t need to worry about managing EC2 instances.  
- You just create task definitions based on CPU and RAM.  
- AWS just runs ECS tasks for you based on the CPU/RAM you need.  
- To scale, just increase the number of tasks.  
- Better for teams that want to avoid managing infrastructure and would rather focus on building the applications.

## **Amazon ECS - IAM Roles for ECS**

<img width="309" alt="Screenshot 2024-11-13 at 20 30 20" src="https://github.com/user-attachments/assets/5be7fa20-f43a-487e-94cd-474964016dc4">

* The ECS agent running on each EC2 instance needs permission to interact with other AWS services, it used EC2 instance profile to handle that
With EC2 launch type, you work with two primary roles:  
1. **EC2 Instance Profile (EC2 Launch Type only):**  
   - Used by the ECS agent  
   - Makes API calls to the ECS service to update the cluster  
   - Sends container logs to CloudWatch Logs  
   - Pulls Docker image from ECR  
   - References sensitive data in Secrets Manager or SSM Parameter Store  

2. **ECS Task Role:**  
   - Defines what permissions a task has while running  
   - Different containers might need access to different AWS services  
   - Allows each task to have a specific role  
* Using these IAM roles ensures that your containers can securely interact with other AWS services without giving them too much power

# **Amazon ECS - Load Balancer Integrations** 💡

<img width="299" alt="Screenshot 2024-11-13 at 20 48 38" src="https://github.com/user-attachments/assets/a32799f5-1642-4cfc-8015-170ac6b1bcad">

AWS offers multiple types of load balancers:

- **Application Load Balancer:**
  - Supported and works for most use cases
  - Aware of HTTP HTTPS
  - Ideal when dealing with web apps, microservices or any HTTP traffic
  - Supports path-based routing and can route traffic to different containers based on the request
  
- **Network Load Balancer:**
  - Recommended only for high throughput/high performance use cases or pair it with AWS Private Link
  - Super fast and works with TCP and UDP traffic
  - Designed for high throughput and low latency
  - Used for gaming, real-time messaging systems, and more
  - Doesn’t have the advanced features like path routing

- **Classic Load Balancer:**
  - Supported but not recommended (no advanced features - no Fargate)


# **ECS Service Auto Scaling** 📈

**Automatically increase/decrease the desired number of ECS tasks during in or out demand times.**

Uses AWS Application Auto Scaling:

- **ECS Service Average CPU Utilisation**
- **ECS Service Average Memory Utilisation** - Scale on RAM
- **ALB request Count Per Target** - metric coming from the ALB
- **Target Tracking** - Scale based on target value for a specific CloudWatch metric
- **Step Scaling** - Scale based on a specified CloudWatch Alarm
- **Scheduled Scaling** - Scale based on a specified date/time (predictable changes)

**ECS Service Auto Scaling (task level) = EC2 Auto Scaling (EC2 Instance Level)**

**Fargate Auto Scaling** is much easier to set up due to it being serverless

Ensures your services can handle spikes without breaking a sweat 🌊



# **Amazon ECR** 🌍

<img width="254" alt="Screenshot 2024-11-13 at 21 00 01" src="https://github.com/user-attachments/assets/c9b9684e-0601-49fa-8ad7-dff473d4d0b7">


## **What is Amazon ECR?** 

* Like a cloud storage system but specifically designed for your docker images, a container image hub on AWS  
* Allows you to store, manage and pull docker images directly from AWS and is designed to integrate perfectly with ECS  
* Contains Private and Public repositories  
* Access is controlled through IAM (permission errors => policy)  
* Supports image vulnerability scanning, versioning image tags, image lifecycle (clean up old images you don’t need)  
* Behind the scenes ECR is backed by Amazon S3  



# **Amazon Elastic Kubernetes Service (EKS)** 🚀



## **What is EKS and what does it do?**

* A way to launch managed Kubernetes clusters on AWS  
* Kubernetes is an open-source system for automatic deployment, scaling and management of containerised (usually Docker) application  
* It's an alternative to ECS, similar goal but different API  
* EKS supports EC2 if you want to deploy worker nodes or Fargate to deploy serverless containers  
* Use case: If your company is already using Kubernetes on-premises or in another cloud and wants to migrate to AWS using Kubernetes  
* Kubernetes is cloud agnostic (can be used in any cloud - Azure, GCP)  
* For multiple regions, deploy one EKS cluster per region  
* Collect logs and metrics using CloudWatch Container Insights


# **ECS vs EKS** ⚖️

**AWS ECS and EKS both manage containers, but they do it differently:**

- **ECS** is like having a managed team for a food truck—you focus on the menu (apps) and let AWS handle the setup and scale of each truck (container).
- **EKS** is like managing multiple restaurants across a city, with full oversight of each site, while AWS handles the kitchen operations (Kubernetes) for smooth scaling and coordination.

**ECS** is simpler for single, straightforward tasks, while **EKS** offers more control and flexibility for complex, multi-container applications across environments.

# **EKS Diagram** 🖼️

<img width="692" alt="Screenshot 2024-11-13 at 21 58 03" src="https://github.com/user-attachments/assets/7a1e68e5-95ce-4b0e-8f68-8a50e88c70b2">

* At the core of the diagram, we’ve got EKS working nodes (the yellow boxes). These nodes are just EC2 instances that run Kubernetes worker processes which handle workloads (your containers are run here).  
* Inside these nodes, we run EKS pods. Pods are the smallest unit in Kubernetes and are basically group containers that handle certain tasks.  
* Each node is part of an ASG, meaning it can scale up or down depending on the load.  
* If the application gets more traffic, EKS can send more nodes to handle that.  
* The overall environment is VPC, everything you see here is inside a VPC (VPC is your private network within AWS) and it ensures that all components in this architecture can communicate securely with each other while still being isolated from other AWS resources.  
* Within the VPC, we have multiple AZs. These zones are physically isolated data centres that ensure high availability. If one zone goes down, the other stays running.  
* Each zone has its own private subnet where the EKS nodes are hosted.  
* The ELB is the component that distributes traffic across your EKS nodes so when users access your application, the ELB ensures that traffic is spread evenly across multiple nodes.  
* NAT Gateway (NGW) allows the nodes inside the private subnets to access the internet, to pull Docker images, apply updates and more, without being exposed directly to the public internet. Keeps your infrastructure secure while still allowing outgoing internet traffic.


# **Amazon EKS node types** 🛠️

- **Managed Node Groups:**
  - Creates and manages node (EC2 instances) for you
  - Nodes are part of an ASG managed by EKS, EKS can adjust the number of nodes on workload
  - Supports On-demand or Spot instances

- **Self-managed nodes:**
  - Nodes created by you and registered to the EKS cluster and managed by an ASG
  - You can use prebuilt AMI - Amazon EKS optimised AMI
  - Supports On-Demand or Spot instances
  - More power but more responsibility

# **AWS Fargate** ⚡

No maintenance required; no nodes managed  
Slightly more expensive 💸


# **AWS Serverless** 🖥️

## **What is serverless?** 🤔

* A new paradigm in which developers don’t have to manage servers anymore  
* They just deploy code, you write the code and AWS runs it without you having to deal with servers  
* They just deploy functions  
* Initially, serverless == FaaS (Function as a Service)  
* Serverless was pioneered by AWS Lambda but now also includes anything that’s managed, databases, messaging, storage etc…  
* Serverless does not mean there are no servers, it means you just don’t manage/provision/see them  

<img width="293" alt="Screenshot 2024-11-14 at 16 06 59" src="https://github.com/user-attachments/assets/83f50d4f-1a22-4985-819b-6c408922de15">


## **AWS Lambda** ⚡

* When talking about serverless in AWS, **AWS Lambda** is where it all starts  
* The core of AWS service offering  
* You just write your code in a function, upload it and **AWS Lambda** runs it for you. No need to manage your service



## **DynamoDB** 📦

* A fully managed serverless NoSQL database that's scaled automatically, no worry for provisioning or managing database servers  



## **AWS Cognito** 🔐

* This service helps manage user authentication, making it easy to handle logins and sign-ups in your application  
* Great for managing your app without manual infrastructure



## **AWS API Gateway** 🌐

* This accesses a bridge between your users and lambda functions  
* Allows you to create and monitor APIs which interact with your backend services  
* Refers to a set of tools and interfaces that allow developers to interact with AWS services programmatically to manage and automate resources in the cloud

## **S3 Bucket** 📂

* A serverless offering, used for storing files and static content  
* Serverless and scales practically based on the amount of data stored

## **SNS (Simple Notification Service) & SQS (Simple Queue Service)** 📬

* These services help with communication between different parts of the system  
* SNS handles notifications, and SQS is for queuing messages between services

## **AWS Kinesis Data Firehose (Niche)** 🔥

* Used to lower streaming data in AWS for analysis and storage  
* Great for real-time analytics without managing any service

## **Aurora Serverless** 💻

* A fully managed serverless database that auto-scales based on demand  
* Automatically adjusts capacity based on your application's needs, eliminating the need to manage database servers

## **Step Functions** 🪜

* If you have workflows that, for example, involve multiple functions or services, **Step Functions** helps you manage and monitor these workflows seamlessly


## **Fargate** 🏃‍♂️

* Serverless compute option for containers, no need to manage EC2 instances as AWS handles that  

---

# **AWS Lambda** 🔥

---

## **What is and why AWS Lambda?**

* A serverless compute device that just automatically runs your code in response to events  
**EC2 vs AWS Lambda:**

### **EC2**:
- Virtual Servers in the cloud  
- Limited by RAM and CPU (Have to customise)  
- Continuously running  
- Scaling means intervention to add/remove servers  
- EC2 keeps running even if you're not doing anything (Bad for costing)  

### **AWS Lambda**:
- Virtual functions - no servers to manage! (Handles everything behind the scenes)  
- Limited by time - short executions  
- Run on-demand  
- Scaling is automated  


## **Benefits of AWS Lambda** 💡
* Easy pricing:
- Pay per request and compute time
- Free tier of 1,000,00 AWS Lambda and 400,000 GBs of compute time
* Integrated with the whole AWS suite of services:
- Plays nicely with the entire AWS ecosystem
* Integrated with many programming languages
* Easy monitoring through AWS Cloudwatch:
- Can see how often they are running, how long they are taking
* Easy to get more resources per functions (up to 10GB of RAM)
* Increasing RAM will also improve CPU and network

## **AWS Lambda Language Support**
* Supports a variety of languages:
- Node.js (JavaScript)
- Java
- C# (.NET Core)/Powershell
- Ruby
- Custom Runtime API (community supported, example Rust or Golang)
* Lambda Container Image:
- The container image must implement the Lambda Runtime API
- ECS/Fargate is preferred for running personal Docker images

## **Example, Serverless Thumbnail Creation**

<img width="643" alt="Screenshot 2024-11-14 at 16 56 14" src="https://github.com/user-attachments/assets/b20b906d-bcab-4cd3-aa86-0deb2965cfd2">

* Here the starting point is the S3, the image here is being upload to the S3 bucket
* When the image is triggered (when image is uploaded it triggers an event), the Lambda function (Your code here) get triggered by the upload event 
* The function job here is to take the uploaded image and generate a smaller thumbnail version of it
* Once the Lambda creates the smaller thumbnail it pushes the new image back into another location in your S3 bucket. Now you have a full sized image and a thumbnail stored
* It can also push your metadata (the image name, size) to a Dynamodb table 
* Everything is fully automated, you don't need to do anything only just upload the image

## **Example, Serverless CRON Job**

<img width="503" alt="Screenshot 2024-11-14 at 17 05 19" src="https://github.com/user-attachments/assets/de3c83e6-4517-460f-8b2e-5fcf3357b8ec">

* Event bridge allows you to monitor events and trigger actions based on schedules like a CRON job (a scheduled task on Unix-like systems that automatically runs commands or scripts at specified times or intervals, such as daily backups or routine system maintenance) every hour
* The event triggers the lambda function which can perform a task like a backup

# **Amazon Networking** 🌐

## **Amazon VPC Diagram** 🖼️

<img width="691" alt="Screenshot 2024-11-14 at 18 27 16" src="https://github.com/user-attachments/assets/8321a788-50fb-48f7-a5e0-a9a3bf66c29d">

## **CIDR** 📍

### **What is CIDR?** 🧐  
* **_Classic Inter-Domain Routing (CIDR)_**  
* A method for allocating (assigning or setting aside resources for a task or purpose) IP addresses.  
* CIDRs help us define IP ranges.  
* A way to organise and group IP addresses, like giving everyone on the same street a similar house number range so mail knows where to go.  
* Imagine IP addresses as house addresses in a big neighbourhood. Instead of writing every address individually, CIDR lets us say, “All houses from 1 to 100 on Elm Street are grouped together.” It shortens addresses by adding a “/” and a number (like /24), which shows how many of the starting bits (“house numbers”) are the same.  
* Used in Security Groups rules and AWS Networking in general.  
* They help to define an IP address range:  
- We’ve seen WW.XX.YY.ZZ => one IP  
- We’ve seen 0.0.0.0 => all IPs  
* But we can define 192.168.0.0/26 => 192.168.0.0 - 192.168.0.63  

### **CIDR components** 🔧  
* Consists of two components:  
- **Base IP:**  
  Represents an IP contained in the range (XX.XX.XX.XX)  
  Example: `10.0.0.0`, `192.168.0.0`  
- **Subnet Mask:**  
  Defines how many bits can change in the IP  
  Example: `/0` (allows all bits to change), `/24`, `/32`  
  Can take two forms:  
  - `/8` `255.0.0.0`  
  - `/16` `255.255.0.0`  
  - `/24` `255.255.255.0`  
  - `32` `255.255.255.255`  

### **CIDR - Subnet Mask** ⚙️  
* The subnet mask basically allows part of the underlying IP to get additional next values from the base IP.

<img width="691" alt="Screenshot 2024-11-14 at 18 48 08" src="https://github.com/user-attachments/assets/58e2957d-dee9-499d-bff0-ae0664657b01">

For example, the IP address on the 3rd one transitions to `192.168.0.7` as `2^3 = 8`, which means that you're working with 8 addresses, and the last one is **7**.

### **CIDR Exercise** ✍️  

- `192.168.0.0/24 = … ?`  
  `32-24= 8`, This means that `2^8 = 256`. This means that it allows for 256 IPs, and the last one is **255**.  
  `192.168.0.0/24 = 192.168.0.255`  

- `192.168.0.0/16 = … ?`  
  `192.168.0.0 = 192.168.255.255` (65,536 IPs)

- `134.56.78.123/32 = … ?`  
  `32-32 = 0`. `2^0 = 1`. This means that it allows for one IP, and the last one is **0**  
  `132.56.78.123/32 = 132.56.78.123`  

- `0.0.0.0/0 = … ?`  
  `0.0.0.0/0 = 255.255.255.255` or All IPs. This means anyone on your internet who has a public IP can access your VPC.  

Good for practice: [IP Address Guide](https://www.ipaddressguide.com/cidr)  


## **Public vs Private IP (IPv4)** 🔒

* IANA (Internet Assigned Numbers Authority) established certain blocks of IPv4 addresses for the use of private (LAN) and public (Internet) addresses.  
* Public IP addresses can be accessed from anywhere on the internet.  
* Private IP can only allow certain values:  
- `10.0.0.0 - 10.255.255.255`  (10.0.0.0/8) - in big networks  
- `172.16.0.0 - 172.31.255.255`  (172.16.0.0/12) - AWS default VPC in that range  
- `192.168.0.0 - 192.168.255.255` (192.168.0.0/16) - home networks  
* All the rest of the IP addresses on the internet are public.

For `172.16.0.0 - 172.31.255.255`:  
`172` in binary: `10101100`  
`16` in binary: `00010000`  
`0` in binary: `00000000`  
`0` in binary: `00000000`  

As `16` in binary: `00010000` it means that the `16` becomes `31` because the remaining 20 bits (those not part of the fixed 12 bits) change, allowing the second octet to go from `00010000` (16) to `00011111` (31).


## **VPC** 💻

### **What is VPC?** 🌍  
* A virtual network in AWS - a private, isolated network within AWS where you can securely launch and manage resources like servers, databases, and applications.  
* All new AWS accounts have a default VPC.  
* New EC2 instances are launched into the default VPC if no subnet is specified.  
* Default VPC has Internet connectivity and all EC2 instances inside it have public IPv4 addresses.  
* We can also get a public and a private IPv4 DNS names.  
* This is why you are able to connect to your EC2 instances immediately after launching them.  

### **VPC Walkthrough** 🧑‍💻  
Head over to the AWS console and type VPC into the console. Navigate to VPC, and here you can see the default VPC created. It is best practice to make your own VPC. 

<img width="714" alt="Screenshot 2024-11-14 at 20 29 50" src="https://github.com/user-attachments/assets/33c876b1-927a-45ec-84f8-3fe685b7f2a3">


In the subnets section, you can see the subnets created for the VPC, and you can also see the available IPs for the section. These subnets are hosted in different AZs. Also, this VPC has ‘auto-assign public IPv4’, which assigns a public IPv4 to the instance. 

<img width="714" alt="Screenshot 2024-11-14 at 20 42 04" src="https://github.com/user-attachments/assets/532031b5-dd1a-498e-9287-bd7d79fdfe09">



Here, the internet gateway can be seen. This is what gives your resources access to the internet.  

<img width="714" alt="Screenshot 2024-11-14 at 20 45 28" src="https://github.com/user-attachments/assets/2bacc242-1b4c-413d-9230-d0bb3bc30384">


### **VPC - Subnet (IPv4)** 🌐  
* Subnets are the smaller networks within your VPC.  
* Each VPC is divided into multiple subnets which allows you to segment your resources across different AZs. This gives you better redundancy and higher availability.  
* Subnets can be public or private.  
* AWS reserves 5 IP addresses (first 4 & last 1) in each subnet.  
* These 5 IP addresses are not available for use and can’t be assigned to an EC2 instance.  
* Example if CIDR block `10.0.0.0/24`, then reserved IP addresses are:  
- `10.0.0.1` - Network Address  
- `10.0.0.2` - Reserved by AWS for the VPC router  
- `10.0.0.3` - Reserved by AWS for mapping to Amazon-provided DNS (IP address of DNS server)  
- `10.0.0.255` - Network Broadcast Address. AWS does not support broadcast in a VPC, therefore the address is reserved.  
* For example, if you need 29 IP addresses for EC2 instances:  
You can’t choose a subnet of size `/27` (32 IP addresses, 32-5 = 27 < 29).  
You need to choose a subnet of size `/26` (64 IP addresses, 64-5 = 59 > 29).


## **Internet Gateway** 🌍

### **What is an Internet Gateway?** 🌐  
* An internet gateway allows resources (e.g. EC2 instance) in a VPC to connect to the internet.  
* Essentially the gateway from which your resources can send and receive data from the outside world.  
* It scales horizontally, meaning that it can handle high traffic easily, and is highly available and redundant.  
* Must be created separately from a VPC.  
* One VPC can only be attached to one IGW and vice versa.  
* Internet Gateways on their own do not allow internet access.  
* Route table must be updated.

## **Bastion Hosts** 🛡️

<img width="253" alt="Screenshot 2024-11-15 at 18 14 38" src="https://github.com/user-attachments/assets/86c9cf99-d6f2-4396-bd31-0e1c0ba12a48">

### **What is a Bastion host and why do we need them?** 🌐

* Imagine you have a private EC2 instance sitting in your private subnet in your VPC. These instances don’t have direct access to the internet as we want to keep the instances secure (sensitive databases, backend systems and more). **Bastion host** allows you to connect them to the internet for reasons such as management and maintenance.

- **Bastion hosts** allow you to connect your private instance or resources to the internet, it's like your bridge 🌉
- We can use **bastion host** to SSH into our private EC2
- The bastion is in the public subnet which is then connected to all other private subnets
- **Bastion Host security group** must allow inbound traffic from the internet on port 22 from restricted CIDR, for example, the public CIDR of your cooperation
- Security Group of the EC2 instances must allow the security group of the bastion host, or the private IP of the bastion host
- Adds an extra layer of protection in environments where security is needed 🔒


## **NAT Gateway** 🌍

<img width="316" alt="Screenshot 2024-11-15 at 18 40 01" src="https://github.com/user-attachments/assets/c0a7116e-884c-4505-a530-e18b9ec46059">


### **What is a NAT Gateway and how is it used?** 🔑

NAT stands for Network Address Translation. A managed service provided by AWS that allows your instances in a private subnet to connect to the internet, BUT it blocks any incoming track from the internet. 

- Lets your private instances reach the outside world (like the internet) for any updates, accessing external APIs without exposing them directly to the internet 🌐
- This is important as it's all about security and ensuring that your private resources stay protected while still having internet access when needed


### **NAT** 💻

AWS handles all the heavy lifting - giving you higher bandwidth, higher availability, no administration.

- Pay per hour for usage and bandwidth
- **NATGW** is created in a specific AZ, uses an Elastic IP
- Can’t be used by EC2 instances in the same subnet (only from other subnets)
- Requires IGW (Internet Gateway) (Private subnet => NATGWS => IGW)
- 5 Gbps of bandwidth with automatic scaling up to 100 Gbps
- No security group to manage/ required


### **NAT Gateway with High availability** 🚀

**NATGW** is highly available but only in a single AZ. If you have multiple resources in different AZs but they are sharing one gateway, there is a risk. If one of the AZs goes down, the **NATGW** goes down with it, meaning that all the other resources will lose access to the internet. 

- You should create **NATGW** in at least two different AZs, spreading your risk across multiple zones ⚠️


### **NAT Gateway vs NAT Instance** 🔄

A **NAT instance** is an EC2 instance configured to allow private resources in a VPC to access the internet.

<img width="685" alt="Screenshot 2024-11-15 at 18 46 59" src="https://github.com/user-attachments/assets/bf05403c-30f3-498c-af36-49838c094804">

## **Network Access Control List (NACL)** 🔒

### **What is NACL?** 🌐

**NACL** are like a firewall which control traffic from and to subnets (at the subnet level).

- One NACL per subnet, new subnets are assigned the Default NACL
- You define **NACL Rules**:
    - Rules have a number (1-32766), higher precedence with a lower number
    - First rule match will drive the decision
    - Example: if you define `#100 ALLOW 10.0.0.10/32` and `#200 DENY 10.0.0.10/32`, the IP address will be allowed because 100 has a higher precedence over 200
- The last rule is an asterisk (*) and denies a request in case of no rule match
- AWS recommends adding rules by increments of 100
- Newly created NACLs will deny everything

**NACL** are a great way of blocking specific IP addresses at the subnet level 🚫

## **Security Groups & NACLs** 🔑

<img width="685" alt="Screenshot 2024-11-15 at 23 03 35" src="https://github.com/user-attachments/assets/44c11641-c948-49a0-80f0-4e164c59a013">

This helps with understanding how traffic flows in and out of your EC2 instance in VPC.

- **SGs** operate at the instance level, they control traffic to and from your EC2 instances
- **NACLs** operate at the subnet level, they control traffic at the boundary of the subnet affecting all resources inside the subnet

### **Income request** 🔄

Here you have a **security group**, which is stateful, meaning once an inbound request is allowed (e.g., an HTTP request to a web server), the corresponding outbound response (like the web page data sent back to the user) is automatically allowed, you don’t have to set up outbound rules for this.

- Like a firewall that sits directly on the instance itself (If allowed, the traffic reaches the EC2 instance. If not, it's denied)

Here you have the **NACLs** that are stateless, meaning that if you allow traffic in one direction (e.g. inbound), you must explicitly allow traffic in the other direction (e.g. outbound) if you want it to work properly.

- **NACLs** act like a door that controls access to and from the subnet as a whole, unlike **SGs** (If denied, the traffic is dropped; if allowed, it moves forward)

The **NACL** filters any traffic coming into the subnet. If the rule permits traffic according to its state configuration, it’ll proceed to the next step; if not, the traffic is blocked right there. When it is outbound, the **NACL** has to also permit the traffic for it to leave.


### **Outgoing traffic Request** 🌍

Here the security outbound rules come into play first, if it allows the data to leave the instance and meet the **NACL** outbound rules.

- As **NACLs** are stateless, they will only let the traffic out only if outbound rules are explicitly configured to allow it
- If the **NACL** allows the traffic, it can leave the subnet
- If return traffic is coming in, the **NACL** will need to allow the traffic for it to reach the subnet, or the response will be blocked
- If return traffic is allowed through the **NACL** and to the **SG**, and then is allowed, then as **SGs** are stateful, it can be automatically let out 🔄


## **VPC Peering** 🌐

<img width="281" alt="Screenshot 2024-11-15 at 23 38 23" src="https://github.com/user-attachments/assets/5a89edac-3235-4fca-9d78-1b3f1781269e">

### **What is VPC Peering?** 🔗

A way to privately connect two VPC using AWS’ internal network. When you set up a **VPC peering** connection, the two VPCs behave as if they are part of the same network, allowing them to communicate with each other without using the internet.

- Allows secure communication between each other 🔒

### **Key Features of VPC Peering** 📝

- Completely private, no traffic flows on the internet
- Makes them behave as if they are in the same network
- Must not have overlapping CIDRs
- Not transitive (must be established for each VPC that needs to communicate with each other)
- Must update route tables in each VPC’s subnets to ensure EC2 instances can communicate with each other

### **VPC Peering - good to knows** 💡

- Can create **VPC peering** connections between VPCs in different AWS accounts/regions
- Can reference a security group in a peered VPC (works cross accounts - same region), making it easier for rules and such


## **VPC Endpoints (AWS PrivateLink)** 🏗️

<img width="316" alt="Screenshot 2024-11-15 at 23 52 45" src="https://github.com/user-attachments/assets/5e2323fa-1c8a-45b2-991c-1a9e9f23703e">

### **What are VPC Endpoints?** 🔒

By default, all AWS resources are publicly exposed, meaning they have a public URL that your resources need to access by the internet.

- **VPC Endpoints** are powered by AWS private link and allow you to connect to AWS services like S3, SNS, and more, using a private network instead of going over the public internet
- Keeps your data traffic securely inside the AWS network 🔒
- May be used if you're not exposing your VPC to the internet just to access AWS services
- Redundant and scales horizontally, meaning it's super reliable and can handle an increasing load without you needing to worry
- No need for **IGW** and **NATGW**

In Case of issues:
- Check DNS Setting Resolution in your VPC
- Check Route tables


### **Types of Endpoint** 🛠️:

<img width="281" alt="Screenshot 2024-11-16 at 00 09 05" src="https://github.com/user-attachments/assets/93d45cde-ce4b-4a34-bb2d-cf6cc29924e7">

- **Interface Endpoints (powered by PrivateLink)**:
    - Provisions an ENI (Elastic Network Interface - private IP address) as an entry point (must attach a security group)
    - Supports most AWS services
    - $ per hour + $ per GB of data processed
    - A way to keep everything on a private network rather than going out on the internet

<img width="281" alt="Screenshot 2024-11-16 at 00 08 34" src="https://github.com/user-attachments/assets/fce26dfe-649d-4f84-b538-b5f15f00b180">

- **Gateway Endpoints**:
    - Provisions a gateway and must be used as a target in a route table (does not need security groups)
    - Supports both S3 and DynamoDB
    - Free 💸

# **IPv6** 🌐

## **What is IPv6?**  
* The successor of IPv4 as soon IPv4 address will be exhausted.  
* Designed to provide 3.4×10^38 unique IP addresses.  
* Every IPv6 address in AWS is public and Internet-routable (no private range), your resources are directly reachable over the internet unless you’ve secured them appropriately.  
* Example: `2001:0db8:85a3:0000:0000:8a2e:0370:7334`  
`::` = all 8 segments are zero  
`2001:db8::` -> the last 6 segments are zero  
`2001:db8::1234:5678` -> the middle 4 segments are zero

<img width="255" alt="Screenshot 2024-11-16 at 00 29 12" src="https://github.com/user-attachments/assets/0a14f4d2-6423-49db-b51d-489e14b1b044">

## **IPv6 in VPC**  
- IPv4 cannot be disabled for your VPC and subnets.  
- You can enable IPv6 (they are public IP addresses) to operate on dual-stack mode.  
- Your EC2 instances will get at least a private internal IPv4 and a public IPv6.  
- They can communicate using either IPv4 or IPv6 to the internet through an internet gateway.  


## **IPv6 Troubleshooting**  
- IPv4 cannot be disabled for your VPC and subnets.  
- If you cannot launch an EC2 in your subnet:  
    - It's not because it cannot acquire an IPv6 (the space is very large).  
    - It’s because there are no available IPv4 in your subnet.  
- The solution for this is to create a new IPv4 CIDR in your subnet.  

# **Egress-only Internet Gateway** 🔒

## **What is an Egress-only internet gateway?**  
* Allows outbound-only internet access for IPv6-enabled resources in a VPC.  
* Ensures secure communication from your VPC to the internet without exposing your resources to incoming threats.  
* Lets your instances communicate over the internet with IPv6 while blocking any incoming traffic.  
You must update the route tables.  

# **IPv6 Routing** 🌍

## **Example**  

<img width="441" alt="Screenshot 2024-11-16 at 00 40 41" src="https://github.com/user-attachments/assets/8ff3c905-f0d0-4b5f-8695-e6d0eea8b678">

<img width="234" alt="Screenshot 2024-11-16 at 00 49 18" src="https://github.com/user-attachments/assets/6f480ff1-9ebf-4b26-88df-fe5bc9baa666">

## **How does IPv6 routing work in a VPC?** 
* Here the VPC is operating in a dual stack mode meaning that both IPv4 and IPv6 addresses are enabled.  
* Here the private and public subnets that also have IPv4 and IPv6 CIDR blocks.  
* The EC2 instance in the subnets is using both a private IPv4 address and a public IPv6 address and an * * Elastic IP in the public subnet.  
* The private subnet route traffic through the NAT Gateway located in the public subnet for IPv4 outbound internet access and the IGW for IPv6 outbound.  
* For IPv6 traffic, instances in both public and private subnets can route their requests directly through the internet gateway unlike IPv4 in the private subnet.  
* The public subnet route table directs traffic for the VPC’s internal IPv4 and IPv6 CIDR blocks locally while all the other IPv4 and IPv6 traffic is sent to the internet gateway.  
* The private subnet route table sends IPv4 traffic to the NAT gateway and the IPv6 traffic to the IGW, this allows the private instances to communicate with the internet for both protocols.  


## **VPC Section Summary**  
| **Component**                  | **Description**                                                                                                                                                                 |  
|--------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|  
| **CIDR**                       | Classless Inter-Domain Routing - Defines the IP range for a VPC (IPv4 & IPv6) and sets boundaries for IP address allocation.                                               |  
| **VPC**                        | Virtual Private Cloud - A virtual network in AWS where you define IPv4 & IPv6 CIDRs for isolation and address allocation.                                                |  
| **Subnets**                    | Divides the VPC into smaller network segments, tied to an AZ, with a CIDR assigned to each subnet.                                                                        |  
| **Internet Gateway**           | Operates at the VPC level to provide IPv4 & IPv6 internet access, enabling routing to and from the internet.                                                             |  
| **Route Tables**               | Configured to manage routes for subnets to IGWs, VPC Peering, Endpoints, etc., ensuring proper traffic flow.                                                             |  
| **Bastion Host**               | A public EC2 instance used for SSH access to private EC2 instances within private subnets.                                                                               |  
| **NAT Instances**              | Provides internet access to private EC2 instances (legacy), set up in public subnets with Source/Destination checks disabled.                                            |  
| **NAT Gateway**                | Managed by AWS, it offers scalable internet access for private EC2 instances targeting IPv4 addresses.                                                                  |  
| **NACL**                       | Network Access Control List - Stateless; manages inbound and outbound traffic at the subnet level, requiring Ephemeral Port rules.                                       |  
| **Security Groups**            | Stateful firewalls operating at the EC2 instance level, automatically allowing replies to inbound requests.                                                             |  
| **VPC Peering**                | Connects two VPCs with non-overlapping CIDRs; traffic is non-transitive between peered VPCs.                                                                             |  
| **VPC Endpoints**              | Provides private access to AWS services (e.g., S3, DynamoDB, CloudFormation, SSM) within a VPC.                                                                          |  
| **AWS PrivateLink**            | Connects services privately from a service VPC to customers' VPCs, without requiring VPC peering, public internet, NAT Gateways, or Route Tables; uses NLB & ENI.         |  
| **Egress-only Internet Gateway** | Similar to a NAT Gateway, but designed specifically for outbound IPv6 traffic.                                                                                          |  
| **Transit Gateway**            | Allows transitive peering connections between VPCs, VPNs, and Direct Connect (DX).                                                                                       |  


# **Amazon Route 53** 🌐

<img width="296" alt="Screenshot 2024-11-16 at 21 57 10" src="https://github.com/user-attachments/assets/9e7616bc-51a8-4927-8238-59e09c0d6f07">

## **What is AWS Route 53?**  
* This is AWS’s managed DNS service and its highly available, scalable and fully managed.  
* Acts as an authoritative DNS meaning that you (the customer) can manage and update DNS records.  
* Route 53 is also a Domain Registrar, lets you buy a domain name.  
* Ability to check the health of your resources.  
* The only AWS service which provides 100% availability SLA, designed to never go down.  
* 53 is a reference to the traditional DNS port.  


## **Route 53 - Hosted Zones**  
* A container for record that define how to route traffic to a domain and its subdomains, holds all dns records for a certain domain and its subdomain.  
- **Public Hosted Zones** - contains records that specify how to route traffic on the Internet (public domain names) application1.mypublicdomain.com  
- **Private Hosted Zones** - contain records that specify how you route traffic within one or more VPCs (private domain names) application1.company.internal  
You pay £0.50 per month per hosted zone.  

<img width="672" alt="Screenshot 2024-11-16 at 22 10 38" src="https://github.com/user-attachments/assets/dd06dda5-e900-481a-ab62-4873ba441256">

## **Public vs Private Hosted Zone**  
- **Public Hosted Zones**:  
  Used when you want to manage DNS for domain that will be accessible over the public internet.  
  In the diagram for the client to access example.com, the public hosted zone resolves this to the correct public IP address (the one for EC2 instance or LB or even S3 exposed to the internet).  
- **Private Hosted Zone**:  
  Used for more internal networks.  
  They ideally want you to handle internal DNS resolution within a VPC.  
  For example, if you want `api.example.internal` or `db.example.internal` to route within your private infrastructure - use and create a private hosted zone.  
  This is where your EC2 instance and database can communicate securely without exposing any parts of your internet network to the outside world.

### **_DNS (Domain Name System)_** 🌐

#### **_What is DNS?_**  
* The unsung hero of the internet  
* Translates the human-friendly hostnames into the machine IP addresses  
* This translation allows your computer to know where to connect and fetch the content you need  
* For example `www.google.com => 172.217.18.36`  
* DNS is the backbone of the internet  
* DNS uses hierarchical naming structure which is below, and this is a layered system that allows everyone to the right place on the internet

<img width="123" alt="Screenshot 2024-11-16 at 22 43 49" src="https://github.com/user-attachments/assets/71154883-1c0e-453f-a543-0e3330aa6182">

#### **_DNS Terminologies_**  
* These help the internet run smooth  
- **Domain Registrar** - this is the place where you go to buy your domain name services like Amazon Route 53, CloudFare, GoDaddy. These let you register domain names from scratch  
- **DNS Records** - These are essentially the instructions for the domain records like A, AAAA, CNAME, NS. These tell the internet where to send traffic; it's like directing letters to the right addresses (IP address)  
- **Zone file** - contains all DNS records for a certain domain, basically a directory that keeps track of everything  
- **NameServer** - this is where your domain is hosted, resolves DNS queries (Authoritative or Non-Authoritative) deciding whether it's coming from an authoritative source or not. Basically the decision maker for DNS requests  
- **TLD (Top Level Domain)** - things like .com, .us, .in, .gov, .org, … , they sit at the very top of the DNS hierarchy  
- **SLD (Second Level Domain)** - things like amazon.com, google.com, this is the part of the domain that you actually register

#### **_URL Example_** 

<img width="435" alt="Screenshot 2024-11-16 at 23 00 07" src="https://github.com/user-attachments/assets/b98d1bae-07bb-4807-abc1-071806821f74">

- **Protocol** - This tells your browser how to fetch your data, `http` for example, layer 7  
- **Sub domain** - api and www in this case, these subdomains let you create different sections or services under your main domain  
- **TLD** - ‘example’ in this case, the name that you own  
- **Root** - `.com` this is the core of DNS's hierarchy  

#### **_How DNS works?_**  
DNS is like asking for directions  
DNS Resolution process and OSI model  
- Users type a domain name in their browser.  
- Query goes to a recursive resolver (local DNS server)  
- Resolver checks the root server, then TLD server, then authoritative server.  
- The IP address is returned, and the website loads 🌍

<img width="668" alt="Screenshot 2024-11-16 at 23 13 29" src="https://github.com/user-attachments/assets/45ecfb1a-0acb-4a08-a3c2-34d50c6114bc">

### **_Route 53_** ☁️

#### **_Route 53 - Records_**  
Route 53 is like a switchboard operator that directs your traffic to where it needs to go (each subdomain or domain you own), it needs records to tell Route 53 how to handle requests coming in  
In Route 53, what it contains is:  
- **Domain/subdomain name** - e.g `example.com`  
- **Record type** - This defines what the record type is e.g., A or AAAA  
- **Value** - This is the actual target and this could be your IP address e.g. `12.34.56.78`  
- **Routing Policy** - how Route 53 responds to queries  
- **TTL (Time To Live)** - amount of time the record is cached at DNS Resolvers  

Route 53 supports the following DNS record types:  
(basic) A/AAAA/CNAME/NS  
(advanced) CAA/DS/MX/NAPTR/PTR/SOA/TXT/SPF/SRV

#### **_Record Types_**  
- **A** - maps a hostname to IPv4  
- **AAAA** - maps a hostname to IPv6  
- **CNAME** - maps a hostname to another hostname  
  The target is a domain name which must have an A or AAAA record  
  Can’t create a CNAME record for the top node of a DNS namespace (Zone Apex)  
  Example: you can’t create for `example.com`, but you can create for `www.example.com`  
- **NS** - Name Servers for the Hosted Zone  
  Control how traffic is routed for a domain

#### **_Records TTL (Time To Live) Client_**  
TTL is essential for how long a DNS is cached before it’s refreshed  
- **High TTL** - e.g. 24 hr:  
  - Less traffic on Route 53  
  - Possibly outdated records  
- **Low TTL** - e.g. 60 sec:  
  - More traffic on Route 53, more expensive  
  - Records are outdated for less time  
  - Easy to change records  
  - Except for Alias records, TTL is mandatory for each DNS record

<img width="383" alt="Screenshot 2024-11-16 at 23 36 50" src="https://github.com/user-attachments/assets/e66d7ecb-351a-4f5f-bda7-b2725d0f0f82">

#### **_CNAME vs Alias_**  
AWS Resources (Load Balancer, CloudFront..) expose an AWS hostname:  
For example, `ib1-1234.us-east-2.elb.amazonaws.com` and you want `myapp.mydomain.com`  
- **CNAME**:  
  - Points a hostname to any other hostname. (`app.mydomain.com = blabla.anything.com`)  
  - Only for non-root domain (aka, something.mydomain.com)  
- **Alias**:  
  - Points a hostname to an AWS resource (`app.mydomain.com => blabla.amazonaws.com`)  
  - Works for ROOT DOMAIN and NON ROOT DOMAIN (aka `mydomain.com`)  
  - Free of charge  
  - Native health check  

#### **_Alias Records_**  

<img width="337" alt="Screenshot 2024-11-16 at 23 52 45" src="https://github.com/user-attachments/assets/088a6e06-08d7-4b8b-b400-5fa9a96f619c">

Maps a hostname to an AWS resource, like an ALB  
An extension to DNS functionality  
Automatically recognises changes in the resource’s IP addresses  
Unlike CNAME, it can be used for the top node of a DNS namespace (Zone Apex), e.g. `example.com`  
Always of type A/AAAA for AWS resources (IPv4/IPv6)  
You can’t set the TTL unlike regular DNS records  

#### **_Alias Records Targets_**  
These are built to work with specific AWS resources and here are common AWS targets:  
- Elastic Load Balancers  
- CloudFront Distributions  
- API Gateway  
- Elastic Beanstalk environments  
- S3 websites  
- VPC Interface Endpoints  
- Global Accelerator accelerator  
- Route 53 record in the same hosted zone  
You cannot set an ALIAS record for an EC2 DNS name

### **_Route 53 - Routing Policies_**  
Helps to respond to DNS queries with the correct answer  
Don’t get confused by the word “Routing”  
It’s not the same as Load Balancer routing which routes the traffic  
DNS does not route any traffic, it only responds to the DNS queries  

Route 53 Supports the following routing policies:  
- **Simple Policy**: Returns the same IP address every time someone queries a domain.  
- **Weighted Policy**: Distributes specific amounts of traffic to different servers as configured.  
- **Failover**: Detects if the main server is down and routes traffic to a backup server, ensuring users are not left stranded.  
- **Latency-Based**: Routes users to the server that responds the fastest to minimise latency.  
- **Geolocation**: Routes traffic based on the user's physical location.  
- **Multi-Value Answer**: Provides multiple IP addresses in response to a DNS query, helping spread load without requiring a load balancer.  
- **Geo Proximity**: (Using Route 53 Traffic Flow) Similar to geolocation but more customisable; routes traffic based on the geographic locations of resources and users.  

#### **_Routing Policies - Simple_**  

<img width="290" alt="Screenshot 2024-11-17 at 22 22 33" src="https://github.com/user-attachments/assets/1f1d757a-3410-4b63-bf13-bae2d4194641">

- Most basic form of routing  
- You route traffic to a single resource so every time someone hits your domain, they’re going to the same place  
- Can specify multiple values in the same record  
- If multiple values are returned, a random one is chosen by the client  
- When alias is enabled, specify only one AWS resource  
- Can’t be associated with health checks  
- This can help distribute multiple traffic to different servers without load balancing  

#### **_Routing Policies - Weighted_**  

<img width="290" alt="Screenshot 2024-11-17 at 22 23 16" src="https://github.com/user-attachments/assets/0e13af05-b31c-4e85-93a2-5889427f4860">

- Splitting traffic between different servers  
- Control the % of the requests that go to each specific resource  
- Assign each record a relative weight  
  Traffic(%) = Weight for a specific record / Sum of all the weights for all records  
- Weights don’t need to sum up to 100  
- DNS records must have the same name and type  
- Can be associated with Health checks  
- Use cases: Load balancing between regions, testing new application versions  
- Assign a weight of 0 to a record to stop sending traffic to a resource  
- If all records have a weight of 0, then all records will be returned equally  

#### **_Routing Policies - Latency-based_** 

<img width="376" alt="Screenshot 2024-11-17 at 22 30 41" src="https://github.com/user-attachments/assets/85fb37be-6ae3-4105-b1c9-fe5239edacc3">

- Looks at where the user is located and redirects them to the resource that has the least latency near them  
- Super helpful when latency for users is priority  
- Latency is based on traffic between users and AWS regions  
- Can be associated with health checks (has a failover capability)  

#### **_Routing Policies - Geolocation_**  

<img width="381" alt="Screenshot 2024-11-17 at 22 51 09" src="https://github.com/user-attachments/assets/d7588485-4815-4ef8-a82b-225e08826e1f">

- Allows you to direct traffic based on the user’s physical location  
- Like you're customising the experience based on where users are coming from  
- You can route traffic based on continents, countries or even by US states, so if someone (example) is accessing your site from France you can send them to a server located in Paris  
- Should create a “Default” record (in case there’s no match on location) and they will be directed to this default  
- Can be associated with health checks  
- Use cases: website localisation, restrict content distribution, load balancing

### **_Routing Policies - Geo Proximity_** 🌍
This one is like geolocation but with more control  
Route traffic to your resources based on the geographic location of users and resources  
Ability to shift more traffic to resources based on the defined bias  
To change the size of the geographic region, specify bias values:  
- To expand (1 to 99) - more traffic to the resource  
- To shrink (-1 to -99) - less traffic to the resource  

Resources can be:  
- AWS resources (specify AWS region)  
- Non-AWS resources (specify Latitude and Longitude)  

You must Route 53 traffic flow to use this feature  
For example:  

<img width="459" alt="Screenshot 2024-11-17 at 23 03 02" src="https://github.com/user-attachments/assets/dc93a59c-ed7a-4326-8365-b9a7253839d4">

* Users in the west will access `us-west-1` whereas users in the east will access `us-east-1`  
* Bias = 0 means that we are not giving any preference to either region, and when bias on one increases, more traffic will be routed to that resource and vice versa.

### **_Routing Policies - IP Routing_** 📡

<img width="295" alt="Screenshot 2024-11-17 at 23 08 44" src="https://github.com/user-attachments/assets/280b65d2-6caf-461e-b905-dcb3f2ee7c18">

* We are focused on users’ IP addresses to determine where to route traffic  
* You provide Route 53 a list of CIDR blocks, basically a range of IP addresses for your clients, map them to different locations or resources, and it routes traffic based on the IP  
* Great for optimising performance and when you want to reduce network costs  
* Example: route end users from a particular ISP to a specific endpoint

### **_Routing Policies - Multi Value_** ⚡
* When you’ve got multiple resources and you want Route 53 to return more than one resource in response to a query  
* Route 53 can return multiple IP addresses or resources for a single DNS query using these  
* Health checks can be used  
* It is not a replacement for having an ELB  
For example:

<img width="606" alt="Screenshot 2024-11-17 at 23 13 33" src="https://github.com/user-attachments/assets/3bff4f66-3135-4903-9c7e-8d0a8008107e">

### **_Route 53 - Health Checks_** 💪

<img width="305" alt="Screenshot 2024-11-17 at 22 49 33" src="https://github.com/user-attachments/assets/55509a69-7038-40c7-9b51-52dee685d017">

#### **_What are Health Checks?_**  
* Health checks are a way to keep tabs on your resources to make sure they are up and running  
* If something goes wrong, Route 53 can help re-traffic or re-route traffic to another healthy instance  
* HTTP Health checks are only for public resources  
* Health checks are integrated with CloudWatch metrics  

#### **_Type of Health Checks_**  
- **_Endpoint Health Checks_**: You have a server or application, and Route 53 pings it to see if it's alive. If it doesn’t get a response, Route 53 knows something is wrong and can re-route traffic to a healthy instance  
- **_Calculated Health Checks_**: Checks that rely on other health checks. For example, you might have multiple servers, and this check determines the overall health of your system by combining the results of individual health checks  
- **_CloudWatch-Based Health Checks_**: Instead of checking if a server is up or down, Route 53 uses metrics from CloudWatch to make decisions. For example, if an app is running low on memory, it will be detected

### **_Domain Registrar vs DNS Service_** 📋

#### **_Domain Registrar & DNS Service_**  
* Where you want to own a domain name like `osman.com`, for example, GoDaddy is a domain registrar  
* Pay an annual fee for the domain  
* The registrar usually provides you with a DNS service to manage your DNS records  
* You can use another DNS service to manage your DNS records  
* DNS Service is like your phone book, it helps people find where to go when they are typing your domain  
Example:  

<img width="568" alt="Screenshot 2024-11-17 at 23 18 08" src="https://github.com/user-attachments/assets/71a321e4-da4e-4501-bfcf-3bbb6f4af338">

**GoDaddy as Registrar & Route 53 as DNS service**  
GoDaddy handles the domain registration

<img width="677" alt="Screenshot 2024-11-17 at 23 21 16" src="https://github.com/user-attachments/assets/d21037e2-7748-4c71-a737-ee97a4f073ba">

### **_3rd Party Registrar with Amazon Route 53_** 🔄

If you buy your domain on a 3rd party registrar, you can still use Route 53 as the DNS service provider  
1. Create a Public hosted zone in Route 53  
2. Update NS records on 3rd party website to use Route 53 Name Servers  

Domain Registrar & DNS Service are two separate things: a registrar sells you a domain  
Every domain registrar usually comes with some DNS features

### **_CloudFront_** 🌐

<img width="488" alt="Screenshot 2024-11-17 at 23 32 28" src="https://github.com/user-attachments/assets/dbd24c9a-f019-48c3-8e9b-35c243095d06">

#### **_What is AWS CloudFront?_**  
* This is AWS’s very own content delivery network (CDN)  
* Designed to boost performance by caching your content closer to users at edge locations  
* Results in faster load times  
* Instead of reaching back to your origin server, like an S3 bucket or EC2 load balancer, the content is cached right at the edge closer to them  
* Improves read performance as content is cached at the edge  
* Improves user experience  
* 216 Points of Presence globally (edge locations), available everywhere  
* DDoS protection (worldwide), integration with Shield, AWS Web Application Firewall  


### **_CloudFront - Origins_** 🔑
* Origins are where CloudFront gets the content it delivers to users  
* Here are examples of common ones:  
- **S3 Bucket**: For distributing files (images, videos, or any static content) and caching them at the edge  
  - Enhance security with CloudFront Origin Access Control (OAC)  
  - OAC is replacing Origin Access Identity (OAI)  
  - CloudFront can be used as an ingress (to upload files to S3)  
- **Custom Origin (HTTP)**  
- **Application Load Balancer**  
- **EC2 Instance**  
- **S3 Website** (must first enable the bucket as a static S3 website)  
- Any HTTP backend you want  


### **_CloudFront at a High Level_** 🖥️

<img width="631" alt="Screenshot 2024-11-17 at 23 48 10" src="https://github.com/user-attachments/assets/a651bc9c-738f-4abe-8d68-107c2cea172e">

* A client (here is your browser) makes a request to view an image from a site like `coder.jpg`  
* The request is sent to CloudFront Edge location. If the image is already cached at this location, it serves it right away  
* If it's not cached, CloudFront then reaches out to the origin (S3, HTTP) and gets the content to deliver to the user  
* The origin sends the content back to CloudFront and CloudFront caches it at its edge locations for future requests and sends the image to the client  


### **_CloudFront - S3 as an Origin_** 💾

* We have S3 buckets acting as the origin — which stores your files like images, videos  
These S3 buckets are cached locally by CloudFront in its edge locations and are scattered across the globe  
* When requested for the file, CloudFront will check the closest location to see if it has the file cached. If not, it will go back to the origin (S3)  
* When using private AWS and bucket policies, only CloudFront can access your S3 files directly, adding an extra layer of security  

### **_CloudFront - ALB or EC2 as an Origin_** 🔄

<img width="654" alt="Screenshot 2024-11-17 at 21 03 47" src="https://github.com/user-attachments/assets/fb5c6a7a-8a71-43c5-b84b-2993dd776ef8">

* You’ve got users connecting to an edge location (where Amazon CloudFront delivers cached content to users), the request goes to ALB or EC2 instance. For this to happen, they need to be public or the ALB needs to be public  
* The ALB routes traffic to the backend services

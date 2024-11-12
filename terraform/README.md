# **Terraform**  

<img width="672" alt="Screenshot 2024-11-12 at 19 17 13" src="https://github.com/user-attachments/assets/3dff7e9f-9eca-4680-b283-6d3cc0ab908c">


## **What is terraform and what can it do?**
* An open source Infrastructure as Code (IaC)
* Allows you to define, provision and manage infrastructure across multiple clouds
* A cloud agonistic tool which means that terraform can deploy to any cloud and different providers
* All the deployment is through the terraform registry
* Makes it easier to:
- Define infrastructure as code
- Provision resources (creating and configuring necessary infrastructure)
- Manage infrastructure state
- Make infrastructure changes
- Support for multiple providers

  

## **Infrastructure as Code (IaC)**  

### What is Infrastructure as code and how does it look?
* This defines the infrastructure as **CODE**  
* Can be stored in version control systems such as **Git** 🗂

<img width="1384" alt="Screenshot 2024-10-22 at 21 09 35" src="https://github.com/user-attachments/assets/988c8c53-d2f9-40ee-bcc5-40d8577888ec">

## **Infrastructure Orchestration vs Config Management**  

## **Infrastructure Orchestration**  

<img width="1384" alt="Screenshot 2024-10-22 at 21 15 39" src="https://github.com/user-attachments/assets/d83f2ad6-1e5f-4981-9c34-994153325641">

## **Terraform**  
* An infrastructure as code tool  
* Cloud agnostic ☁️

Here in the image, the Practitioner is deploying their infrastructure as code using Terraform.

## **Plan stage**
In this stage the Terraform plan will be telling you exactly what your code is trying to do, comparing the current infrastructures code - attempting the get the desired state in comparison to your current state

## **Apply stage**
In this stage, they are applying what the infrastructure as code is planning to do from the plan stage and is launched into the cloud

## **Tips for using Terraform**  

Crucial tips needed for when using Terraform:  
- **Terraform documentation**: Important and need to get hands-on with this to familiarise with Terraform 📚  
- **Terraform registry**: Here you can find documentation for different providers and can help you know what resources are required for deployments  
- **Testing and validation**: Important to test the implications of your code and this stops you from further problems like deleting or breaking anything  
- **Start with a small MVP (Minimum Viable Product) then iterate**: Configuring the resource that you need in order to deploy it into the cloud first, then iterating (By adding variables, turning code into a Terraform module)  
- **Implement Dry Software Engineering Principle**: Dry means "Do not repeat yourself" — in Terraform, the best code will be the code that isn’t repeated.

## **Downloading Terraform**  

Head over to [HashiCorp Terraform Install](https://developer.hashicorp.com/terraform/install?product_intent=terraform) to get the code to download Terraform on your local machine.

<img width="742" alt="Screenshot 2024-10-22 at 22 16 13" src="https://github.com/user-attachments/assets/45b97758-426b-4521-b38c-23e293836a82">

Homebrew is needed here to download Terraform. Head over to [Homebrew](https://brew.sh/) to download it. Then once downloaded, run the commands above on your local terminal. 💻

<img width="569" alt="Screenshot 2024-10-22 at 22 21 23" src="https://github.com/user-attachments/assets/1c0f8aa0-8d8b-445e-a8e2-e7663f66925e">

## **Terraform State File**  

### What is the Terraform state file?

The blueprint, a record of your existing infrastructure (an up-to-date record of your actual state)  
Helps ensure **idempotency** (your configuration, no matter how many times you run it, will produce the same result and wouldn’t deploy things multiple times, and if a change is made, only that small change will be made) 🔄

## **Desired state vs current state**  

**Current state (.tfstate)**: your Terraform state file, which is an up-to-date record of your infrastructure  
**Desired state (.tf)**: YOUR Terraform configuration, things you're trying to implement or things you're trying to deploy. It compares this to your actual infrastructure.

## **Deploying Infrastructure**  

## **Terraform Providers**  

Terraform provider is a plugin that allows you to interact with cloud platforms, services, or other technologies.  
What enables Terraform to manage your resources in the cloud.

## **Terraform Provider Code**  

<img width="447" alt="Screenshot 2024-10-23 at 16 37 23" src="https://github.com/user-attachments/assets/fcaeacf6-9c2f-49e1-a3be-55c59146c253">

### Code Breakdown  

- **Required providers**: tells you which provider is being used and what your Terraform code depends on (in this case AWS)  
- **Source**: the source of the provider, often formatted in namespace and then provider (in this case hashicorp/aws)  
- **Version**: the version of your provider  
- **Provider**: What you're trying to configure via Terraform and the provider name. This is telling Terraform that you are trying to configure the AWS provider.

## **Terraform init**  

### Terraform Initialise (init)  

This command sets the foundation for everything you do in Terraform  
The first command you run in any new or existing Terraform project.  

Example:

<img width="1053" alt="Screenshot 2024-10-24 at 16 54 25" src="https://github.com/user-attachments/assets/91719a90-37f7-477c-a8d9-6060604bcddd">

Here Terraform is initialising the backend, this is where Terraform stores the state of your infrastructure. This can be stored on a local file in your machine or stored remotely in a storage space like S3.  
Here Terraform is initialising provider plugins, identifying which providers you need and downloading the provider from its registry.

## **Terraform Plan**  

### What is Terraform plan?  

Terraform always comes up with a plan, this command is all about previewing the changes Terraform will make before they happen. This is good for ensuring that everything is suitable and just right.  
‘Your way of seeing into the future’ 🔮

Terraform analyses your configuration files, compares them to the current state of your infrastructure and then generates a plan.  
When Terraform plan is run, it will see what changes need to be made to achieve your desired state.

Example:  
<img width="513" alt="Screenshot 2024-10-24 at 17 02 59" src="https://github.com/user-attachments/assets/ddf80b94-3dd3-45ac-af1c-71a8be04173b">

+ **create**: Resources that will be created  
~ **update in-place**: Resources will be modified  
- **destroy**: Resources that will be destroyed  

Here:  
- An EC2 instance (`aws_instance`) will be created  
- A security group (`aws_security_group`) will have some properties updated  
- An S3 bucket (`aws-s3-bucket`) will be destroyed  

## **Terraform apply**  

### What is Terraform apply?  

The command that actually makes things happen  
Terraform apply takes the execution plan and applies it to your infrastructure, meaning that any resources that Terraform plans to create, update, or destroy will be applied when the apply command is run.

<img width="251" alt="Screenshot 2024-10-24 at 19 46 41" src="https://github.com/user-attachments/assets/11edce5a-fce0-464d-b713-6a8e95f58640">

Here at the bottom, the Terraform apply is applied and if entered "yes," the planned actions will take place.

## **Terraform destroy**  

### What is Terraform destroy?  

The command that safely and efficiently tears down your infrastructure  
A convenient way to destroy all remote objects managed by a particular Terraform configuration  
Opposite of Terraform apply.  
During the Terraform destroy process, it reads your configuration and state file to understand what resource it is managing.  
Similar to a plan, it generates a destruction plan, and once confirmed, Terraform sends the necessary commands to the provider in order to destroy the resources.  
Once the above is done, Terraform updates the state file to reflect that the resources have been destroyed.

## **Resource Block**  

### What is a resource block?  

In Terraform, a resource block is used to define a piece of infrastructure you want to manage — whether it's a virtual machine, database, or networking components.  
The resource block is where you specify what you want to create, update or delete about that resource.  
Each resource block corresponds to a specific resource type, provided by the Terraform provider you’re using.  
A resource block is good practice for production environments.

Example:

<img width="290" alt="Screenshot 2024-10-24 at 23 31 10" src="https://github.com/user-attachments/assets/b54e63ba-cf61-4360-8f2e-2a7eaa982c66">

Here the resource type is the `aws_instance` which is an instance being used, and ‘Test’ is the name with your configuration or the name of your resource.  
The `ami` attribute specifies the Amazon machine image (e.g., Linux Ubuntu)  
The `instance_type` determines the hardware configuration of

 the EC2 instance.  
The `tags` are used for labelling the instance with a name.  

Let me know if you need more adjustments or further explanations!


# **_Local Statefile_** 🔒

## **What is a local statefile?**
- By default, Terraform stores your state file locally on your machine, right in your project directory.
- Straightforward and works for simple setups.
- Easy to set up, with no additional configuration required to store your state file locally.
- Ideal for single-user projects, as it keeps everything contained and simple.


# **_Remote Statefile_** ☁️

## **What is a remote statefile?**
* When working or larger projects or in a team, the local state files quickly become a limitation
* Remote state files help solve many of the challenges associated with local state files by storing that state in a central secure location, this * allows a collaborative approach as multiple team members can access and update the same infrastructure without risking conflicts
* Many backends like AWS S3, Azure Blob and more offer state locking which prevents users from making changes at the same time, which reduces that * risk of state corruption
* Remote backends can automatically back up your state file and apply encryption, ensuring that your infrastructure state is both secure and recoverable



# **Remote vs Local** 📊

## **Local State**
- Stored as a file on your local machine, typically `terraform.tfstate`.
- **Easy setup**: No additional configuration required.
- **Best for**: Small teams or individual projects.
  - **Cons**:
    - Difficult to share between team members.
    - Risk of accidental deletion or corruption without backups.

## **Remote State**
- Stored remotely (e.g., in S3, Terraform Cloud, etc.).
- Accessible by multiple users and can be version-controlled.
- **Best for**: Collaborative projects or production environments.
  - **Cons**:
    - Requires additional configuration and permissions.
    - Potential network latency when accessing the state file.


# **_Running an S3 backend_** 📂

Here in my `provider.tf`, I used my S3 bucket from my AWS console to store and organise data in the cloud. First, I created my S3 bucket through the AWS console and then input it into my `provider.tf`.

<img width="284" alt="Screenshot 2024-10-28 at 18 39 25" src="https://github.com/user-attachments/assets/036aa9ef-c074-4b67-b820-412687bf9d49">

Then, I ran the `terraform init` command to initialise the S3 backend for my infrastructure.



# **_Terraform Workflows_** 🔄

### **Terraform init**
- Initialises a working directory containing Terraform config files.
- This is the **first command** to run after creating a new Terraform configuration.
- **Downloads providers** and configures the backend for your state file.

### **Terraform validate**
- Validates the terraform configuration files in that responsive directory to ensure they are syntactically valid and internally consistent 
- Checking to see if your code is well formed, spotting them syntax errors before you move onto complex steps

### **Terraform plan**
- Creates an **execution plan**.
- Performs a refresh and determines necessary actions to achieve the desired state specified in configuration files.

### **Terraform apply**
- Applies the changes required to reach the desired configuration state.
- By default, scans the current directory for the configuration and applies changes appropriately.

### **Terraform destroy**
- Used to **destroy managed infrastructure**.
- Prompts for confirmation before proceeding.


# **_Variables_** 🛠️

## **What are variables and why are they used?**
* A way to parameterise your configuration in terraform, making them more dynamic and reusable
* Variables manage different environments with the same configuration files
* Variables define values once and reference them multiple times
* Variables make modules reusable across multiple projects
* Standardise variable names for better collaboration
* Enable dynamic configuration changes without altering code
* Reduce redundancy and potential for errors


### **Input Variables**
* Most common type of variables in terraform
* Allow you to parameterise your terraform configurations which makes them more dynamic and reusable
* You define input variables to receive values from a user, the command line or variable files. And then use those values in your terraform configuration

## **Input variable example** 

<img width="358" alt="Screenshot 2024-11-12 at 18 47 51" src="https://github.com/user-attachments/assets/08dd5ef4-cc45-4ca5-b3a3-5370c4fcf65b">


[Variables documentation on the Terraform developer site](https://developer.hashicorp.com/terraform/language/values/variables)

<img width="1104" alt="Screenshot 2024-10-28 at 20 25 13" src="https://github.com/user-attachments/assets/59c9ecc1-9ff0-4fc8-80d3-24d71a460535">


### **.tfvars file**
* Used to define variable values separately from the main configuration files
* `.tfvars File`: Stores variable values separately from main config
* Environment-Specific: Easily switch between dev, prod, etc.
* Sensitive Data: Keeps secrets secure (add to `.gitignore`)
* Cleaner Code: Separates config and variable values


### **Local Variable**
* Allow you to simplify your terraform configurations by centralising values that you use repeatedly, which makes your code easier to manage and 
understand
* Local variables in terraform are used to store those immediate values that you compute or assign once and then use use multiple times throughout your configuration 
* Help reduce redundancy and keep code dry (not repeating yourself)

## **Local variable example** 

<img width="337" alt="Screenshot 2024-11-12 at 18 58 32" src="https://github.com/user-attachments/assets/df98741a-a51e-46d3-8733-6caa1f9075a5">

Local variables can, just like input variables, can be found on the terraform developers website, 
https://developer.hashicorp.com/terraform/language/values/locals 

<img width="1440" alt="Screenshot 2024-10-28 at 20 55 39" src="https://github.com/user-attachments/assets/d66a9518-819b-4759-8f3e-8462e2caa038">


# **_Output Variables_** 🔍

### **Output variables**
* Used to display values after your terraform apply has run and been completed, these could be ids, ip addresses or other important information about your infrastructure
* Useful for passing information to other configurations, automation tools or even just displaying them for your own reference 
* Ensure that names are descriptive so it is clear to others
* Document your outputs, always include descriptions 
* Use outputs for critical information
* Secure sensitive outputs

## **Output variable example** 

<img width="214" alt="Screenshot 2024-10-28 at 21 03 33" src="https://github.com/user-attachments/assets/6192da40-ba3c-4b2b-aa0d-fa54c92d2b0e">

Just like the other two, output variables can be seen on the terraform developers website, https://developer.hashicorp.com/terraform/language/values/outputs 

<img width="710" alt="Screenshot 2024-10-28 at 21 07 24" src="https://github.com/user-attachments/assets/a7009bde-602c-400b-803f-7736f007cbb4">

# **_Variables Hierarchy_** 📐

<img width="403" alt="Screenshot 2024-10-28 at 21 14 06" src="https://github.com/user-attachments/assets/2dddb1b2-d8c4-4b24-9d5f-bb6f825a3caf">


* Least priority, Default values: If no other value is specified in any of the other 3 options, terraform will use the default value which is define in the variable block
* `.tfvars Files`: Terraform looks for these files by the name .tfvars and to use this
* TF_VAR Environment Variables: Can be used to set environment variables to set the value of a variable and this is prefixed with the TF_VAR
* Highest priority Command line flag: Run using -var-file="file.tfvars"



# **_Types of Variables_** 📑

## **Primitive Types**
Simple, individual values.

<img width="348" alt="Screenshot 2024-10-28 at 21 27 15" src="https://github.com/user-attachments/assets/8b678ff5-bb52-41ec-bdda-5e8f82b5f46e">

## **Complex Types**
Group multiple values together in more meaningful ways.
<img width="348" alt="Screenshot 2024-10-28 at 21 30 03" src="https://github.com/user-attachments/assets/79f4b028-68fb-499b-a6f5-ee025c7cc012">


# **_Modules_** 📦

## **What are modules?**
* A collection of configuration files that are grouped together in order to serve a specific process
* As code grow more complex, organising and reusing your code becomes essential - that’s where modules comes in
* Modules allow reusability which further supports keep code dry
* Allows organisation as it allows you to separate and test each part l
* Allows consistency, can see which part is going wrong
* Allows collaboration 


## **What makes a good module?**
* Should be flexible, well documented and easy to use
* Simplicity, reliability and output values
* Modules should expose useful parts of output values in your terraform configuration
* Modules should avoid hard coding values between environments like instance types, regions, or AMI ids and should be passed in as variables, * allowing it to be reused in different environments
* Keeping modules focused on a single responsibility



# **_Common Interview Questions about Terraform_** ❓

### **Question 1. What is Terraform?**
Terraform is an open source infrastructure as code tool developed by HashiCorp (Mention infrastructure orchestration vs Config management, cloud agnostic, how it allows you to define provision and manage infrastructure across various cloud providers, idempotency)

### **Question 2. What are the benefits of using Infrastructure as Code?**
Provides automation, consistency and repeatability in infrastructure management. Enables version control, reduces manual intervention and allows for faster and safer deployments

### **Question 3. What is the difference between Terraform apply and Terraform plan?**
Terraform plan makes that comparison between your desired state and your actual state and sees what changes need to be implemented and almost predicts the future and Terraform apply where it actually applies the changes to your infrastructure, and it's what executes the plan


### **Question 4. What is a Terraform provider?**
A provider is a plugin in terraform that interacts with APIs of cloud platforms, SaaS providers and other services to manage resources, for example AWS. How the provider allows connection between the terraform configuration and the provider


### **Question 5. Can you explain the role of state in Terraform?**
Terraform keeps track of your infrastructure state via a state file. This file records all the resources that terraform manages, allowing it to know what changes need to be applied when you run commands like apply or destroy. Your state is your blueprint for taking notes of everything and keeping track of infrastructure. Without state file, you wouldn’t be able to do what you need to do

### **Question 6. What is the purpose of a backend in Terraform?**
A backend defines where and how the terraform state is stored. Backends can be stored in state files locally or remotely and they enable collaboration and versioning of state. Good to mention remote vs local state files and compare the two and also good to mention terraform lockin.

### **Question 7. What is the difference between terraform import and terraform init?**
Terraform import brings the existing infrastructure that was not created by terraform under terraform’s management. Terraform init initialises the working directory containing your configuration files, downloads the right plugins and also initialises any modules that you’ve configured.

### **Question 8. How do you manage sensitive data in Terraform?**
A good way to manage sensitive data is by storing sensitive data in environment variables. Sensitive data like API keys, passwords and credentials should always be handled very carefully. Another way is by utilising your remote backend. If you're using something like AWS S3 to store your store file, you could use AWS secret management to store your secrets and sensitive data.

### **Question 9. What is the purpose of the terraform refresh command?**
This command updates the state file to match the current real world infrastructure. It queries the actual infrastructure to ensure Terraform state is in sync with the latest reality. This is important to keep your Terraform state file in line with your actual infrastructure. This ensures that when you run your terraform plan, it will actually be going to plan and not be employing anything it shouldn't or deleting anything it shouldn't.

### **Question 10. Can you describe a challenging problem you encountered while using Terraform and solve this?**
Here you should:
* Talk about projects you worked on
* Share your screen and go through your code


### **Question 11. How to ensure that your Terraform code is maintainable and scalable?**
Here modules are useful as they break down the infrastructure and how modules are very specific. Also want to mention:
* Leveraging variable files for flexibility 
* Maintaining documentation
* Using version control


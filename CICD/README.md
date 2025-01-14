# **CI/CD** 🚀

## **What is CI/CD?**
CI/CD is a powerful tool for developers that DevOps can't live without.  
- It helps us build, test, and release software applications much faster and more reliably.  
- It solves “my machine problems” and works everywhere.  
- Popular tools include **GitHub Actions** and **Jenkins**.  
- CI/CD stands for:  
  - **Continuous Integration**: Automatically integrating code changes from multiple contributors into a shared repository several times a day.  
  - **Continuous Deployment**: Automatically releasing every change that passes all stages of the production pipeline.  
  - **Continuous Delivery**: Ensuring the software can be reliably released at any time.

## **CI/CD Pipeline**  
A series of steps that your code goes through from the moment it is committed:  
- **Commit change**: Push your code and commit it. Developers make changes and push them to GitHub.  
- **Trigger build**: The commit triggers an automated build process.  
- **Build**: The code is compiled, and all dependencies are assembled and built.  
- **Notify of build outcome**: The system notifies the team whether it failed or succeeded.  
- **Run tests**: Automated tests ensure the changes don’t break existing functionality.  
- **Notify of test outcome**: The system notifies the team whether it failed or succeeded.  
- **Deliver build to staging**: If the tests pass, the build is delivered to a staging environment for further testing.  
- **Deploy to production**: Code is deployed where users can access it.

## **Why is CI/CD so important?** 💡  
- **Faster delivery**: Automating integration and deployment processes allows for quicker feature and fix releases.  
- **Improved quality**: Continuous testing and integration catch and fix bugs early, improving software quality.  
- **Reduced risks**: Smaller incremental changes are easier to test and deploy, reducing the risk of failures.  
- **Better collaboration**: Frequent integration encourages teamwork, reducing conflicts and improving communication.  
- **Automation**: Reduces manual errors, ensures consistency, and frees up developers for critical tasks.  
- **Continuous feedback**: Provides immediate feedback on code changes, helping detect and fix issues early.


# **Popular CI/CD Tools** 🛠️

### **GitLab CI/CD**  
- Integrated directly into GitLab, making it user-friendly.  
- Strong integration with GitLab’s version control system.  

### **Jenkins**  
- A widely popular open-source CI/CD tool.  
- Extremely powerful with the right plugins but can be complex.  

### **CircleCI**  
- Cloud-based, known for its speed and simplicity.  
- Integrates well with GitHub and Bitbucket for building, testing, and deploying.  

### **Travis CI**  
- Cloud-based, integrates well with GitHub.  
- Loved for its simplicity and ease of use.  

### **GitHub Actions**  
- Integrated directly into GitHub, making it reliable and popular.  

## **Role of CI/CD in DevOps** ♾️  
- CI/CD makes the process continuous.  
- **Continuous integration**: Code is built and tested.  
- **Release, deploy, and operate**: Automates building, ensuring proper compilation and dependency handling.  

## **How CI/CD fits into the DevOps architecture**  
### **Source Control**  
- Developers store and manage their code using tools like GitHub, GitLab, and Bitbucket.  
- Enables collaboration without conflicts and maintains a history of changes.  

### **CI/CD**  
- Automates the build, test, and deployment processes.  
- Ensures continuous integration, testing, and deployment of code changes.  

### **Monitoring and Logging**  
- Continuously monitors the application to ensure smooth operation.  
- Tools like Prometheus, Grafana, and ELK help track performance and log events.  

# **GitHub Actions** 🧑‍💻

## **GitHub Actions & CI/CD Workflows**  
1. Developers write features or fix bugs and make changes to the codebase.  
2. Commit changes to the repository. This triggers the **GitHub Actions** workflow, defined in a **YAML** file.  
3. The workflow enters the CI pipeline, starting with building the code.  
4. Automated tests verify functionality and ensure no new issues.  
5. If tests pass, the code is packaged, creating a deployment version.  
6. The packaged code is deployed, monitored, and improved as needed.

### **Use cases for GitHub Actions**  
- **Continuous Integration**: Automatically build and test code with each push.  
- **Continuous Deployment**: Deploy code to production after successful tests.  
- **Automation**: Streamline repetitive tasks like managing project boards.  


# **Introduction to YAML Syntax** 📝

## **What is YAML?**  
- YAML stands for **YAML Ain’t Markup Language**.  
- It is essential for tools like Kubernetes and CI/CD.  
- YAML is a human-readable data serialization standard often used for configuration files.  

### **Key Features**:  
- **Key-value pairs**: Basic building blocks, e.g., `name: Osman`.  
- **Lists**: Sequences of items, defined using a dash (`-`).  
- **Nested elements**: Represent hierarchical data structures, e.g., nested key-value pairs.
- **List**: Sequences of items, lists are defined using a dash, followed by a space and then a certain list item.
- **Nested elements**: Represented nested data structures you can have the key-value in a list

**_CICD Hands On_**  
I started off by creating a new directory which contains the YAML file. When using a YAML file, ensure it ends with `.yaml` or `.yml` so that the system knows it's a YAML file. Here it's called `yaml-syntax.yaml`.  

Here I created simple key-values, lists, and nested elements to show how they can be used. ✨  


### **_Workflow Syntax & Structure_**  
**_Workflow Structure_**  
You must have a workflow file. This workflow file is defined in a YAML file and is usually located in `.github/workflows`.  
Any workflow that you have (`ci.yaml`, `main.yaml`) is triggered by GitHub as a pipeline. 🚀  

**Example of a Workflow Structure:**  
```yaml
name: The name of your workflow, the label that helps you identify what this workflow does
on: The trigger, this triggers the workflow. For example, here it is a push (git push) and will work every time there is a push to the repository. This defines the events that will trigger the workflow.
jobs: A series of tasks that run as part of the workflow. Each job runs in its own virtual environment and can be configured to run on different operating systems. Here we have a single job named build.
runs-on: The environment it is running on, e.g., what operating system to use for the job.
steps: Individual tasks that run in a sequence. Each step can either run commands or use an action (reusable pieces of code that can perform a variety of tasks).
```
GitHub Workflows has a marketplace of reusable and community-created actions, some by GitHub and others by organisations like AWS and more. 💡  


### **_Events, Jobs, and Steps_**  


### **_Building a Simple CI Pipeline_**  
- First, I started by creating a new folder named `.github/workflows`, which is where any CICD is run. This is the folder for it.  
- Then I added a `ci.yaml`, which will run my pipeline.  

Then I configured my pipeline, making it a simple pipeline that has the right build, runs on the right operating system, and prints out a “Hello everyone”.  

Then I did:  
```bash
git add .
git commit -m "Updating CICD"
git push
```

And this was a success, here is the outcome! 🎉  


### **_Advanced GitHub Actions_**  

**_Using Conditions and Expressions_**  

**_Conditions_**  
Let you control when a job or step should run based on a certain criteria.  
**_Expressions_**  
Allow you to perform calculations, manipulate strings, and let you do more within your pipeline. 🔄  

**Condition:** Here the test is being run IF it is successful.  
**Expression:** Here a message is being printed with the branch name, and this is how you reference a branch name within GitHub.  


### **_Matrix Builds_**  
Allows you to run multiple job configurations in parallel.  
The matrix strategy is how you can do this in GitHub Actions.  
Useful for testing across different environments (e.g., running your code on different operating systems like Windows and Mac). 🌍  


### **_Parallel Testing_**  
Runs multiple test cases or suites simultaneously across different environments to speed up the testing process and reduce feedback time. ⚡  

# Hands on with CICD 💻

Here I just created a simple python app that prints out “Hello, World!”.

After this I created a pipeline with different jobs running on different python versions.


## Code breakdown 🧑‍💻

Here's a breakdown of the provided GitHub Actions workflow code:

### **Workflow Name**
```yaml
name: CoderCo combined
```
- This defines the name of the workflow, visible in the Actions tab of your repository.


### **Trigger**
```yaml
on: [push]
```
- The workflow triggers whenever you push changes to the repository.

---

### **Jobs Section**
#### **Job Name**
```yaml
jobs:
    build:
```
- This defines a job named `build`.

#### **Runner**
```yaml
runs-on: ubuntu-latest
```
- Specifies the environment in which the job will run. In this case, the latest Ubuntu Linux version.


### **Strategy Matrix**
```yaml
strategy:
    matrix:
        python-version: [3.7, 3.8, 3.9]
```
- This defines a matrix strategy to run the job across multiple Python versions (`3.7`, `3.8`, `3.9`).
- For each version, a separate job instance will execute the steps.


### **Steps**
The job consists of multiple sequential steps:

#### **1. Checkout Code**
```yaml
- name: checkout code
  uses: actions/checkout@v2
```
- Pulls the repository's code into the runner environment.
- The `actions/checkout@v2` action is used to clone the repository.

#### **2. Set Up Python**
```yaml
- name: setup python
  uses: actions/setup-python@v2
  with:
    python-version: ${{ matrix.python-version }}
```
- Sets up Python in the runner environment for the specific version defined by the matrix.
- `${{ matrix.python-version }}` dynamically selects the current Python version.

#### **3. Install Dependencies**
```yaml
- name: install dependencies
  run: | 
    cd CICD/chapter\ 4
    python -m pip install --upgrade pip
    if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
```
- Installs dependencies for the project:
  - Changes to the `CICD/chapter 4` directory.
  - Upgrades `pip`.
  - Installs dependencies from `requirements.txt` if the file exists.

#### **4. Run Tests**
```yaml
- name: run tests
  run: |
    cd CICD/chapter\ 4
    python -m unittest discover
```
- Executes tests using `unittest`'s discovery mode.
- Assumes tests are located in the current directory or its subdirectories.

#### **5. Notify Success**
```yaml
- name: notify us of success
  run: echo "Test passed on Python ${{ matrix.python-version }}"
  if: success()
```
- Prints a success message indicating the Python version if all previous steps in the job pass.
- The `if: success()` condition ensures this step only runs if the job is successful.

And it was successful! 🎉


# Managing secrets in Github Actions 🔒

## What are secrets?
**Sensitive pieces of information** such as API keys, passwords, or any other credentials that you don't want to expose in your codebase.  
Secrets keep your code a ‘secret’ 🔑

## How secrets are managed in workflows? 🛠️

Secrets are managed in a `$` variable which accesses the secrets in our workflow.  
For example on line 12 & 13.

## How to manage secrets in Github Actions demo 🖥️

To configure secrets in Github, head over to settings, and scroll to secrets. Here you can add whatever secrets and variables you like to keep your sensitive data safe.

Here I configured a pipeline just to test with secrets. First, I created a normal secret. And it was successful. ✅

Then I created a variable for testing purposes and it also succeeded. 👍


# Reusable CICD 🔁

## Creating Custom actions 🛠️
Reusable units of code that automate specific tasks in your CICD pipeline.  
A way to automate parts of your workflow that are specific to your project.  
You can create these actions in Javascript (uses node.js), Docker (containers), or even as composite actions.

## Benefits of Custom actions
- Can be reused in multiple workflows.
- Saves time and ensures consistency.
- Ensures efficiency.

## Example
Here we are using a custom action by owner and repository name (repo@v1).  
We also pass our input value to the custom action.


# CI/CD in the real world 🌍

## Automated testing and linting 🧪
Both of these help us catch errors early and keep our codebase clean and reliable.

### Linting
A process of analysing code for potential errors and enforcing coding standards.  
Like having a spell checker for your code.  
**Benefits**: maintains code quality, catches syntax errors.  
**Tools**: Javascript, ESlint, Pilot.

### Automated testing
Running tests automatically on your codebase to ensure it works as expected.  
Involves writing test cases that involve different parts of your code and running these tests automatically every time you make changes to the code.  
**Benefits**: detects issues early, ensures code quality.  
**Tools**: J Unit, pytest.


## Deploying to different environments 🌐

Ensuring our code works well, not just on our local machines but others is very crucial in real world scenarios.  
Here are 3 main areas used for this:

### Environment Types 🏗️
When working in a real environment, we typically deploy to 3 or 4 environments (Development, Staging, and Production).

- **Development**: Where all the development work happens, like a sandbox environment where developers can test new features and bug fixes. Often a bit messy but it's okay as all testing happens here.  
- **Staging**: Like a dress rehearsal for production, a stable environment that mirrors production as closely as possible. This is where you do final testing to catch any issues that might have slipped through in development.  
- **Production**: The live environment where your application is accessible to users, should be done carefully and should be automated to minimise human error.

### Deployment Strategies 🚀
Two main types for this:
- **Manual deployment**: Involves manually moving code from one environment to another, straightforward but prone to human error and can be time-consuming.
- **Automated deployment**: This is where CICD shines, uses scripts and tools to move code between environments. Faster and more reliable and also reduces the risk of mistakes.

### Tools 🧰
Helps us to manage our deployments:
- AWS: EC2, ECS, EKS, Lambda
- Azure AKS
- GCP CloudRun/GKE

# Security in CICD 🔐

As we automate our workflows, we need to ensure that our processes are secure to protect our data and code.  
Here are best practices for secure workflows:

- **Secure your Secrets**:  
Include information like your API, keys, password and more.  
Never hard-code these directly into your source code.  
Use Github secrets to ensure security.

- **Control Access**:  
Control who has access to your repositories and your workflows.  
Implement the principle of least privilege (only give them a limited amount of permissions).  
Use role-based access control (RBAC) to manage permissions effectively.

- **Scan for vulnerabilities**:  
Scan for any weak points regularly and your code in general.  
Use tools like dependabot, snake, or other security scanners that integrate with your CICD pipeline to automatically check for known vulnerabilities.

- **Audit and monitor**:  
Ensure to audit and monitor your CICD pipelines.  
Keep track of who did what and when by naming and logging audit features.  
Monitor your pipeline for any unusual or suspicious activity.  
Set up alerts to identify you of any potential security incidents.

# Debugging workflow failures (common issues & solutions) 🛠️

Very common for pipelines to fail, every developer or engineer at some point encounters debugging workflow failures.  
Here are common issues and solutions to the issues:

- **Failed tests**:  
Your tests could have failed for any reason.  
**Solution**: Check the error and see what failed, do various code checks and debug the problem.

- **Dependency Errors**:  
Occur when your project relies on external libraries or packages that have conflicts or are not installed correctly.  
**Solution**: Ensure that the package has the right installed packages using tools online like ChatGPT, documentation.

- **Configuration Errors**:  
Could happen when there are issues in your syntax, like misspelled words or more.  
**Solution**: Double-check and use linting tools for this.

- **Permissions issues**:  
When you don’t have the correct permission in a repository to perform certain actions.  
**Solution**: Ensure you are given the right permissions by the owner.

**Solutions**:
- Review logs
- Re-run jobs
- Update dependencies
- Check configuration


### Manual Triggers with Github Actions 🛠️

#### What are **manual triggers?**  
Very hidden and specific tool that allow workflows to be started manually via the use of github actions ui.  
Here is an example:

```yaml
name: Coderco Manual CI
on:
  push:
    branches:
      - main
  workflow_dispatch:
    inputs:
      python-version:
        description: "Choose Python version"
        required: true
        default: 3.7
        type: choice
        options:
          - 3.7
          - 3.8
          - 3.9
```

#### Code breakdown  
**Name:**

**Value**: Coderco Manual CI  
This is the name of the workflow displayed in the GitHub Actions interface.  
**On:**

Specifies the events that will trigger the workflow.  
**Push:**  
The workflow is triggered whenever code is pushed to the repository.  
**Workflow_dispatch:**  
Allows the workflow to be triggered manually with user inputs.  
**Inputs:**

Defined under **workflow_dispatch**, these allow users to customise the workflow run.  
**python-version:**  
- description: Explains what the input is (e.g., "choose Python version").
- required: Set to true, so this input must be provided when manually triggering the workflow.
- default: The default Python version is set to 3.7 if no value is selected.
- type: Specifies the input type as Choice.
- options: The available Python versions users can select:
  - 3.7
  - 3.8
  - 3.9

#### How It Works:  
If code is pushed, the workflow runs automatically.  
Users can also trigger the workflow manually through the GitHub Actions interface, selecting the desired Python version from the dropdown.

#### Why is **Manual triggers used?**  
For certain deployments, if you want to trigger deployments to various environments like staging, prod on different times then you want to use this.  
- Allow workflows to be started manually via the Github Actions UI.
- Used for deployments, maintenance & on-demand jobs.
- For maintenance jobs, like you want to run data migration or database backup.

#### Manual workflow demo  
Here I created a new yaml file called **manual** and created a pipeline.  
Then I created a trigger to ensure my app can run on different python versions.

And it was successful. ✅

### CICD Challenge 🚀


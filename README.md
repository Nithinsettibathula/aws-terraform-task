AWS \& Terraform EC2 Provisioning

Intern Name: Settibathula Nithin



Objective: To learn AWS core concepts and automate infrastructure using Terraform.

What I Did

In this task, I learned how to set up cloud infrastructure using two methods:



Manual Method: Launched an EC2 instance through the AWS Management Console.



Automated Method: Provisioned an EC2 instance using Terraform (Infrastructure as Code).



1\. AWS Core Concepts Learned

During this task, I gained a practical understanding of the following cloud fundamentals:



EC2 (Elastic Compute Cloud): On-demand virtual servers used for hosting applications.



AMI (Amazon Machine Image): Pre-configured OS templates; I used Ubuntu 24.04 LTS for both deployments.



IAM (Identity and Access Management): Used to create a secure administrative user (nithin-admin) with specific Access Keys for external tool integration.



Infrastructure as Code (IaC): The practice of managing and provisioning infrastructure through machine-readable definition files rather than manual processes.



2\. Manual EC2 Instance Launch

I first launched an instance manually to understand the standard AWS workflow:



Region: Europe (Stockholm) eu-north-1.



Steps: Selected the AMI, chose t2.micro (Free Tier), and created a key pair named Task-2.pem.



Outcome: Successfully initiated the launch of instance i-05b47915e21c8d8d1.



3\. Automated Provisioning using Terraform

After the manual setup, I automated the process to improve efficiency and repeatability.



A. Environment Setup

Installed and configured AWS CLI with my IAM credentials using aws configure.



Downloaded the Terraform CLI and initialized the project folder.



B. Terraform Implementation (main.tf)

I wrote a configuration file to define the desired infrastructure state:



Terraform

provider "aws" {

&nbsp; region = "eu-north-1"

}



resource "aws\_instance" "terraform\_ec2" {

&nbsp; ami           = "ami-09a9858973b288bdd" 

&nbsp; instance\_type = "t3.micro" # Updated for regional free tier compatibility



&nbsp; tags = {

&nbsp;   Name = "Nithin-Terraform-EC2"

&nbsp; }

}

C. Execution Commands

./terraform init: Initialized the directory and downloaded AWS providers.



./terraform plan: Verified that 1 resource was scheduled for creation.



./terraform apply: Deployed the instance to the cloud.



4\. Troubleshooting \& Challenges

Configuration Files: Resolved an initial "No configuration files" error by ensuring the main.tf was correctly saved in the working directory.



Instance Eligibility: I encountered a 400 Bad Request because t2.micro was not eligible for the Free Tier in Stockholm. I successfully troubleshot this by updating my code to use t3.micro.



Results: Terraform successfully created instance i-03294ed441f273492 in just 16 seconds.



5\. Conclusion

This Task allowed me to successfully demonstrate both manual and automated cloud provisioning.


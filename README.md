# Scalable Web Application on AWS

## Overview

This project demonstrates the deployment of a scalable web application architecture on AWS. The architecture leverages various AWS services, including VPC, Auto Scaling Groups, Application Load Balancers, and S3 for backend storage, along with Infrastructure as Code (IaC) practices using Terraform.

## Architecture Diagram

![Untitled Diagram-Page-2 (5)](https://github.com/user-attachments/assets/ec921fd2-a6d4-491a-ae9e-fa34df831973)

## Architecture Components

- **VPC Setup:** 
  - A Virtual Private Cloud (VPC) created in the **us-east-1** region with two public subnets across different availability zones (us-east-1a and us-east-1b) for high availability.

- **Application Load Balancer:**
  - Distributes incoming traffic evenly across web servers to ensure efficient resource utilization and improved response times.

- **Auto Scaling Group:**
  - Automatically adjusts the number of web server instances based on incoming traffic, ensuring optimal performance during peak times.

- **Web Servers:**
  - Deployed two web servers (webserver1 and webserver2) in the public subnets, enabling seamless user access to the application.

- **Configuration Management with Ansible:**
  - Automated deployments and consistent configuration across instances.

- **Dynamic Templating with Jinja2:**
  - Used for creating dynamic and adaptable infrastructure setups.

- **State Locking with DynamoDB:**
  - Ensures that concurrent operations do not interfere with each other during provisioning.

- **Backend Storage:**
  - Utilizes **Amazon S3** for reliable and scalable data management.

## Getting Started

### Prerequisites

- AWS Account
- Terraform installed
- Ansible installed


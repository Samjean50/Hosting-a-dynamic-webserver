# Hosting a Dynamic Web App on AWS with Terraform Module Docker Amazon ECR and ECS

## Project Overview
This mini project demonstrates how to host a dynamic web application on AWS using Terraform for modular infrastructure provisioning. The web application is containerized using Docker, the image is stored in Amazon ECR (Elastic Container Registry), and the application is deployed to Amazon ECS (Elastic Container Service).

# Project Objectives
* Terraform Module Creation: Learn how to create Terraform modules for modular infrastructure provisioning.
* Dockerization: Containerize a dynamic web application using Docker.
* Amazon ECR Configuration: Configure Terraform to create an Amazon ECR registry for storing Docker images.
* Amazon ECS Deployment: Use Terraform to provision an ECS cluster and deploy the Dockerized web app.
# Tasks Breakdown
## Task 1: Dockerization of Web App
* Create a new terraform project folder mkdir terraform-ec2-webapp image

* Enter the location cd terraform-ec2-webapp image

* Create directories for the ECR and ECS modules mkdir -p modules/ecr and mkdir -p modules/ecs image


* Write a Dockerfile to containerize the web application.
  
* Test the Docker image locally to ensure the web app runs successfully within a container.

![first](images/firstcopy.png)
![docker](images/3.png)
![docker](images/3.6.png)
![docker](images/3.7.png)
![docker](images/3.8.png)
![docker](images/6.png)
## Task 2: Terraform Module for Amazon ECR
* Write a Terraform module (modules/ecr/main.tf) to create an Amazon ECR repository for storing Docker images.

![docker](images/8.png)

* Login to the aws ecr and Tag your docker image image
![docker](images/3.8.png)
* Create you ECR Repository image

* Push you docker image to the ecr repository image

* Check that your docker image has been successfully pushed image
![docker](images/3.5.png)



## Task 3: Terraform Module for ECS
* Write a Terraform module (modules/ecs/main.tf) to provision an ECS cluster and deploy the Dockerized web app.
![docker](images/9.png)

Access the application on your browser image

## Task 4: Main Terraform Configuration
* Create the main Terraform configuration file (main.tf) in the root project directory.
* Use the ECR and ECS modules to create the necessary infrastructure for hosting the web app.
* ![docker](images/5.png)

## Task 5: Deployment
* Build the Docker image of your web app.
* Push the Docker image to the Amazon ECR repository created by Terraform.
* Run terraform init and terraform apply to deploy the ECS cluster and the web app.
* Access the web app through the public IP or DNS of the ECS service.


![docker](images/docker.png)
![docker](images/docker2.png)
![docker](images/4.1.png)
![docker](images/4.2.png)
![docker](images/1.png)
![docker](images/2.png)

## Task 6: Terraform Destroy
* For Project Clean up.
![docker](images/destroy.png)
![docker](images/destroy2.png)

# Prerequisites
* AWS CLI configured with access credentials
* Docker installed and running
* Terraform installed and configured
* Basic familiarity with AWS services (ECR, ECS, IAM, VPC, etc.)
# Deploy Web Application on AWS using ECS and ECR

![AWS](https://i.imgur.com/ZVH65Tj.jpg)

**This article will deploy a Web application onto AWS using ECS (Elastic Container Service) and ECR (Elastic Container Registry). We start by creating the docker image of our application and pushing it to ECR. After that, we create the instance and deploy the application on AWS using ECS. Next, we ensure the application is running correctly using Application Load balancer endpoint.**

## Prerequisite

* Web-application in any language like (HTML, css, JS)
* Background on Docker
* AWS Account
* Creativity is always a plus point.

## What are Dockers and Containers?

![Docker](https://imgur.com/raGErLx.png)

### Docker Workflow

**Docker is an open platform software. It is used for developing, shipping, and running applications. Docker virtualizes the operating system of the computer on which it is installed and running. It provides the ability to package and run an application in a loosely isolated environment called a container. A container is a runnable instance of a docker image. You can create, start, stop, move, or delete a container using the Docker API or CLI. You can connect a container to one or more networks, attach storage to it, or even create a new docker image based on its current state.**

## What is AWS Elastic Container Registry?

**Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry for your Docker images.**

### ECR Steps

Here comes the task in which we create the repository on AWS using ECR where our application docker image will reside. To begin with the creation of a repository on ECR we first search ECR on AWS console and follows the below steps.


## Detailed Process

### 1. Create AWS Elastic Container Registry (ECR)

1. **Open AWS Management Console**: Go to the AWS Management Console at [aws.amazon.com](https://aws.amazon.com/).
2. **Navigate to ECR**: In the console, find the ECR service by typing "ECR" in the search bar and selecting "Elastic Container Registry".
3. **Create Repository**:
   - Click on "Create repository".
   - Enter a name for your repository (e.g., `Web-App`).
   - Choose any additional settings as needed.
   - Click on "Create repository".

### 2. Build and Push Docker Image to ECR

#### 2.1 Authenticate Docker to ECR

Run the following command in your terminal to authenticate Docker to your ECR registry:

```sh
aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com

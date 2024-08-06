# Deploy Web Application on AWS using ECS and ECR

![AWS](https://i.imgur.com/ZVH65Tj.jpg)

**This article will deploy a Web application onto AWS using ECS (Elastic Container Service) and ECR (Elastic Container Registry). We start by creating the docker image of our application and pushing it to ECR. After that, we create the instance and deploy the application on AWS using ECS. Next, we ensure the application is running correctly using Application Load balancer endpoint.**

## Prerequisite

* Web-application in any language like (HTML, css, JS)
* Background on Docker
* AWS Account
* Creativity is always a plus point.

## Deployment

![Deployment](https://i.imgur.com/BryX8UL.jpg)

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

```
aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com

Replace <your-region> with your AWS region (e.g., us-west-2) and <aws_account_id> with your AWS account ID.
```
#### 2.2 Build Docker Image

Navigate to the directory containing your Dockerfile and build your Docker image with the following command:

```
docker build -t java-app .
```
#### 2.3 Tag Docker Image

Tag the Docker image so it can be pushed to your ECR repository:

```
docker tag java-app:latest <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com/java-app:latest
```

#### 2.4 Push Docker Image to ECR

Push the tagged Docker image to your ECR repository:

```
docker push <aws_account_id>.dkr.ecr.<your-region>.amazonaws.com/java-app:latest
```
### 3. Deploy to Amazon ECS
1. **Open AWS Management Console:** Go to the AWS Management Console at [aws.amazon.com](https://aws.amazon.com).
2. **Navigate to ECS:** Find the ECS service by typing "ECS" in the search bar and selecting "Elastic Container Service".
3. **Create or Use Existing Cluster:**
   - You can create a new cluster or use an existing one.
4. **Create or Update Task Definition:**
   - Create a new task definition or use an existing one.
   - Update the task definition to use the Docker image from your ECR repository.
5. **Create or Update Service:**
   - Create a new service or update an existing one to use the task definition.

### 4. Set Up Database on Amazon RDS
1. **Open AWS Management Console:** Go to the AWS Management Console at [aws.amazon.com](https://aws.amazon.com).
2. **Navigate to RDS:** Find the RDS service by typing "RDS" in the search bar and selecting "Relational Database Service".
3. **Create Database Instance:**
   - Click on "Create database".
   - Choose the database engine, instance class, and storage options.
   - Set up security groups and networking.

### 5. Configure Load Balancer
1. **Open AWS Management Console:** Go to the AWS Management Console at [aws.amazon.com](https://aws.amazon.com).
2. **Navigate to EC2:** Find the EC2 service by typing "EC2" in the search bar and selecting "EC2".
3. **Create or Use Existing Load Balancer:**
   - Create a new load balancer or use an existing one.
   - Configure the load balancer to forward traffic to your ECS service.

### 6. Test Your Application
1. Access your application through the load balancer's DNS name and verify that it is working as expected.

### Authored by [Hitesh Vishwas Pogade](https://github.com/GetPlaced60)





















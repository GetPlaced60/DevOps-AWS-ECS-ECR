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

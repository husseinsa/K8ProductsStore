# Modernize Applications with Azure and Kubernetes - Hands on Series

This repo houses the source for the hands-on series sessions.
The series will walk you step by step to help you move an existing application into Azure Kubernetes.

## Application Overview

*k8ProdcutsStore* is a simple application to demonstrate kubernetes (k8) concepts and Azure Kubernetes Services (AKS). The app contains all necessary docker files to build images of the application and the database (mongo db) locally. Once we move the application to Azure, we'll use Microsoft's PaaS offering (Cosmos DB) to store our application data.

 - `front-end`: An Angular SPA  
 - `back-end`: .NET Core API for reading products
 - `db`: MongoDB that holds our products data
 - `db-seed`: A container that populates mongo db 
 - `docker`: Bash scripts for all docker commands to build and run the application
 -  `azure-cli-scripts`: Scripts to provision Azure resources
 - `k8`: Application k8 manifest files 
 
 ## Video Sessions

| Sessions                      | Content     |
| ----------------------------- |-------------| 
| [Introduction](https://youtu.be/jvfAUgG8NNc)| High level overview of the series, expectations, takeaways and application overview |
| [Containerize App with Docker](https://youtu.be/tWTl8u3qxrY)  | Containerize a multi-service application, walk through docker files, mutli-stage builds, docker commands to build, run and execute commands on running containers                                                                              |   
| Run App with Docker Compose   |                                                                                     |   
| Create AKS and  Registry      |
| Deploying App on K8           |
| Migrate into Azure Cosmos     |   
| Package Application with Helm |
| Configure Kubernetes Ingress  |
| Azure Monitor for Containers  |



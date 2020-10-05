
# Modernize Applications with Azure and Kubernetes - Hands on Series

This repo houses the source for the hands-on series sessions.
The series will walk you step by step to help you move an existing application into Azure Kubernetes.

## Application Overview

*k8ProductsStore* is a simple application to demonstrate kubernetes (k8) concepts and Azure Kubernetes Services (AKS). The app contains all necessary docker files to build images of the application and the database (mongo db) locally. Once we move the application to Azure, we'll use Microsoft's PaaS offering (Cosmos DB) to store our application data.

 - `front-end`: An Angular SPA  
 - `back-end`: .NET Core API for reading products
 - `db`: MongoDB that holds our products data
 - `db-seed`: A container that populates mongo db 
 - `docker`: Bash scripts for all docker commands to build and run the application
 -  `azure-cli-scripts`: Scripts to provision Azure resources
 - `k8`: Application k8 manifest files 
 
 ## Video Sessions

| Sessions                      | Content     | Branch Code |
| ----------------------------- |-------------|-------------|
| [Introduction](https://youtu.be/jvfAUgG8NNc)| High level overview of the series, expectations, takeaways and application overview |
| [Containerize App with Docker](https://youtu.be/tWTl8u3qxrY)  | Containerize a multi-service application, walk through docker files, mutli-stage builds, docker commands to build, run and execute commands on running containers | [Master](https://github.com/husseinsa/K8ProductsStore)  <br> <sub> _Same as master since I wasn't creating separate branches_ </sub>
| [Run App with Docker Compose](https://www.youtube.com/watch?v=CodUTUTUL4g&t=612s) |  Run multi-container application using docker compose, pass enviroment variables and seed mongo db container with data | [Master](https://github.com/husseinsa/K8ProductsStore)  <br> <sub> _Same as master since I wasn't creating separate branches_ </sub>
| [Create AKS and  Registry](https://www.youtube.com/watch?v=FYJbhFbHo5I&t=4s)  |  Create Azure Kubernetes Service & Azure Container Registry, explain Azure service principles
| [Deploying App on K8](https://www.youtube.com/watch?v=OCOTF5GatU4&t) | Push images to container registry, create kubernetes manifest files for the productsStore app and deploy it to run on a kubernetes cluster | [session5_deployAppIntoAKS](https://github.com/husseinsa/K8ProductsStore/tree/session5_deployAppIntoAKS)
| [Migrate into Azure Cosmos](https://www.youtube.com/watch?v=cYQ98sIC5ys&t)     |  Cover Kubernetes configuration using ConfigMaps and Secrets with a real live demo on migrating mongodb into cosmos and passing config data through kubernetes native objects. | [session6_migrate2Cosmos](https://github.com/husseinsa/K8ProductsStore/tree/session6_migrate2Cosmos)
| [Package Application with Helm](https://www.youtube.com/watch?v=6d6Ig6zK9gg&t) | Overcome Kubernetes deployment challenges by packaging application using Helm. Explain Helm workflow, and dive deep into Helm world (charts, releases, repositories) | [session7_helm](https://github.com/husseinsa/K8ProductsStore/tree/session7_helm)
| [Configure Kubernetes Ingress](https://www.youtube.com/watch?v=QUfn0EDMmtY&t)  | Talk about ingress and its benefits, then explain ingress controllers and resource and implement it in a real world scenario | [session8_ingress](https://github.com/husseinsa/K8ProductsStore/tree/session8_ingress)
| Azure Monitor for Containers  |



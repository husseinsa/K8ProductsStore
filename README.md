# Modernize Applications with Azure and Kubernetes - Hands on Series

This repo houses the source for the hands-on series sessions.
The hands-on series will walk you step by step to help you move an existing application into Azure kubernetes.


## Application Overview

*k8ProdcutsStore* is a simple application to demonstrate kubernetes (8) concepts and Azure Kubernetes Services (AKS). The app contains all necessary docker files to build images of the application and the database (mongo db) locally. Once we move the application to Azure, we'll use Microsoft's PaaS offering (Cosmos DB) to store our application data.

 - `front-end`: An Angular SPA  
 - `back-end`: .NET Core API for reading products
 - `db`: mongo db that holds our products data
 - `db-seed`: a container that populates mongo db 
 - `docker`: bash scripts for all docker commands to build and run the application
 -  `azure-cli-scripts`: scripts to provision azure resources
 - `k8`: application k8 manifest files 

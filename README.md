# Modernize Applications with Azure and Kubernetes - Hands on Series

This repo houses the source code and dockerfiles for the hands on series sessions.
The hands on series will walk you step by step to help you move an existing application into Azure kubernetes.


Application Overview
k8ProdcutsStore is a simple application to demonstrate kubernetes (8) concepts and Azure Kubernetes Services (AKS). The app contains all necessary docker files to build images of the application and the database (mongo db) localy. The database won't be hosted inside of k8s, instead Microsoft's PaaS offering (Cosmos DB) is used.

An Angular SPA (frontend)
.NET Core 2.0
An API for reading products
.NET Core 2.0

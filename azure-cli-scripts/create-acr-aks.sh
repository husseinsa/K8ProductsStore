 #!/bin/bash

# RESOURCE_GROUP: The name of our resource group
# ACR_NAME: The name of our Azure Container Registry
# SERVICE_PRINCIPAL_NAME: Must be unique within your AD tenant
# AKS_CLUSTER: name of our Azure Kubernetes Service
# REGION: location for our azure services and resources
RESOURCE_GROUP=prodstoreRG
ACR_NAME=prodstoreCR
AKS_CLUSTER=prodstoreAKS
SERVICE_PRINCIPAL_NAME=prodstoreSP
REGION=EASTUS


# Create a resource group.
echo "Create $RESOURCE_GROUP resource group for this project:"

az group create -n $RESOURCE_GROUP -l $REGION 

echo $'\n'

#Create the ACR
echo "Create $ACR_NAME  Azure container registry:"

az acr create -n $ACR_NAME -g $RESOURCE_GROUP -l $REGION --sku basic 

echo $'\n'

# Obtain the full registry ID for subsequent command args
ACR_REGISTRY_ID=$(az acr show --name $ACR_NAME --query id --output tsv)

echo "Container registry ID: $ACR_REGISTRY_ID /n"

# Create the service principal with rights scoped to the registry.
# Modify the '--role'
	# argument value as desired:	
	# acrpull:     pull only
	# acrpush:     push and pull
	# owner:       push, pull, and assign roles

SP_PASSWD=$(az ad sp create-for-rbac --name http://$SERVICE_PRINCIPAL_NAME --scopes $ACR_REGISTRY_ID --role acrpull --query password --output tsv)
SP_APP_ID=$(az ad sp show --id http://$SERVICE_PRINCIPAL_NAME --query appId --output tsv)

echo $'\n'

# Output the service principal's credentials; use these in AKS authenticate against container registy
echo "Service principal ID: $SP_APP_ID"
echo $"Service principal password: $SP_PASSWD"

echo $'\n'

#Create the AKS cluster and associate it with the sp. Specified 1 nodes for the count, the default VM size is 'DS2_v2'
echo "Creating AKS cluster named $AKS_CLUSTER with 1 node. This may take a while..."
az aks create -n $AKS_CLUSTER -g $RESOURCE_GROUP -l $REGION \
          -c 1 \
          --vm-set-type AvailabilitySet  \
          --generate-ssh-keys \
          --service-principal $SP_APP_ID \
          --client-secret $SP_PASSWD

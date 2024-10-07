az acr repository show-manifests --name myRegistry --repository myRepo --query "[?tags==null].[digest]" --output tsv

az acr repository delete --name myRegistry --repository myRepo --manifest sha256:<digest>

# Variables
ACR_NAME=<your-acr-name>
REPOSITORY_NAME=<your-repository-name>

# Get the list of tags, keeping only the ones to delete
tags_to_delete=$(az acr repository show-tags --name $ACR_NAME --repository $REPOSITORY_NAME --orderby time_desc --query "[].{tag: name}" -o tsv | tail -n +6)

# Delete the tags and manifests
for tag in $tags_to_delete; do
    echo "Deleting tag: $tag"
    az acr repository delete --name $ACR_NAME --repository $REPOSITORY_NAME --tag $tag --yes --force
done


az acr repository show-manifests --name myRegistry --repository myRepo --query "[?tags==null].[digest]" --output tsv

az acr repository delete --name myRegistry --repository myRepo --manifest sha256:<digest>

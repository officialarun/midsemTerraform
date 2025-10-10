# For development
terraform apply -var-file="environments/dev.tfvars"

# For production
terraform apply -var-file="environments/prod.tfvars"


# resource for backend 
az group create --name tfstate-rg --location eastasia
# storage account for backend in tfstate-rg
az storage account create \
  --name tfstate12345abc123 \
  --resource-group tfstate-rg \
  --location eastasia \
  --sku Standard_LRS

# storage container for backend tfstate
az storage container create \
  --name tfstate \
  --account-name tfstate12345abc123
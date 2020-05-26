location_name = "eastus2"
resource_group_name = "rg-scalesets"
storage_account_name = "stscalesets"

# export ARM_ACCESS_KEY=$(az keyvault secret show --name terraform-backend-key --vault-name kv-tf-scalesets --query value -o tsv)
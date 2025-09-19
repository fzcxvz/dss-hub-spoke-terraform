/**

terraform { 
  backend "azurerm" {} 
}

**/
provider "azurerm" {
  resource_provider_registrations = "none"
  subscription_id = "xxx"  #tochange > make private
/*  
    tenant_id       = "xxxxx"
    client_id       = "xxxxx"
    client_secret   = "xxxxx" 
*/
  features {
        key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }


}


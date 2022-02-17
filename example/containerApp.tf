provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myapprg123"
  location = "northeurope"
}

resource "azurerm_log_analytics_workspace" "main" {
  name                = "myappworkspace"
  location            = "northeurope"
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = "30"
}

 module "container_app" {
    source = "../terraform"
    kubeEnvironment_name = "myapppodname"
    resource_group_name = "myapprg123"
    location = "northeurope"
    containerApp_name = "containernamev3"
    containerApp_image = "nginx"
    containerApp_external = true
    containerApp_targetPort = "80"
    containerApp_cpu = "1"
    containerApp_memory = "2"
    containerApp_minReplicas = "1"
    containerApp_maxReplicas = "2"
    workspace_id = azurerm_log_analytics_workspace.main.workspace_id
    workspace_sharedKey = azurerm_log_analytics_workspace.main.primary_shared_key
    tags = {

    }
 }
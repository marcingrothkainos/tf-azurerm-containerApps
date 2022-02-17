data "azurerm_subscription" "current" {}


resource "azurerm_template_deployment" "container_app" {
    name                = var.containerApp_name
    resource_group_name = var.resource_group_name
    deployment_mode     = "Incremental"
    template_body       = file("../Templates/container_app.json")
    parameters_body     = templatefile("../Templates/parameters.json",
    {
        kubeEnvironment_name        = var.kubeEnvironment_name
        location                    = var.location
        containerApp_name           = var.containerApp_name
        containerApp_image          = var.containerApp_image
        containerApp_external       = var.containerApp_external
        containerApp_targetPort     = var.containerApp_targetPort
        containerApp_cpu            = var.containerApp_cpu
        containerApp_memory         = var.containerApp_memory
        containerApp_minReplicas    = var.containerApp_minReplicas
        containerApp_maxReplicas    = var.containerApp_maxReplicas
        workspace_id                = var.workspace_id
        workspace_sharedKey         = var.workspace_sharedKey
        subscription_id             = local.subscription_id
        tags                        = jsonencode(var.tags)
    }
    )


}
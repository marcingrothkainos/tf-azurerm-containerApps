
variable "resource_group_name" {
    type = string
    description = "Resource Group name"
}

variable "containerApp_name" {
    type = string
    description = "Container App name"
}

variable "kubeEnvironment_name" {
    type = string
    description = "Container App name"
}

variable "containerApp_image" {
    type = string
    description = "Container App name"
}

variable "containerApp_external" {
    type = bool
    description = "Container App name"
}

variable "containerApp_targetPort" {
    type = string
    description = "Container App name"
}

variable "containerApp_cpu" {
    type = string
    description = "Container App name"
}

variable "containerApp_memory" {
    type = string
    description = "Container App name"
}

variable "containerApp_minReplicas" {
    type = string
    description = "Container App name"
}

variable "containerApp_maxReplicas" {
    type = string
    description = "Log analitics workspace name"
}

variable "workspace_id" {
    type = string
    description = "Log Analytics workspace ID"
}

variable "workspace_sharedKey"{
    type = string
    sensitive = true
    description = "Workspace Shared key"
}

variable "location" {
    type = string
    description = "location of Resources"
}

variable "subscription_id" {
    default = ""
    type = string
}

variable "tags" {
    type = map(string)
    description = "Map of Tags"
    default = {

    }
}
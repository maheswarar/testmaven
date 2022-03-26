variable "client_id" {
  default = "72490468-aa33-4ec8-b6d9-d6dbab64c983"
}
variable "client_secret" {
  default = "dYU7Q~7ZfJ-VwCqsVgcr_ecgggQbrSjrPBDET"
}

variable "agent_count" {
    default = 2
}

variable "ssh_public_key" {
    default = "D:/ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "k8stest"
}
variable "tenant_id" {
    default = "3bde9775-557d-43ef-b332-4a50d75c4dbf"
}
variable "subscription_id" {
    default = "36466222-7a67-4f86-a650-0ec33dda4d75"
}
variable cluster_name {
    default = "k8stest"
}

variable resource_group_name {
    default = "azure-k8stest"
}

variable location {
    default = "East US"
}
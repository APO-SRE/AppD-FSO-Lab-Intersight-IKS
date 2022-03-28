# Variables ----------------------------------------------------------------------------------------
variable "apikey" {
  description = "Intersight API Key."
  type        = string
}

variable "secretkey" {
  description = "Intersight Secret Key or file location."
  type        = string
}

variable "endpoint" {
  description = "Intersight API Endpoint URL."
  type        = string
  default     = "https://www.intersight.com"
}

variable "organization" {
  description = "Intersight organization name."
  type        = string
  default     = "default"
}

variable "ssh_user" {
  description = "SSH Username for IKS node login."
  type        = string
}

variable "ssh_key" {
  description = "SSH Public Key to be used for IKS node login."
  type        = string
}

variable "vc_password" {
  description = "Password of the account to be used with vCenter. This should be the password for the account used to register vCenter with Intersight."
  type        = string
  sensitive   = true
}

variable "tags" {
  type    = list(map(string))
  default = []
}

variable "cluster_name" {
  description = "Name of IKS Cluster."
  type        = string
}

variable "action_type" {
  description = "Cluster action: 'Unassign', 'Deploy', etc."
  type        = string
  default     = "Unassign"
}

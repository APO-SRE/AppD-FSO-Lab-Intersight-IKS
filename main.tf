# Providers ----------------------------------------------------------------------------------------
provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = var.endpoint
}

# Modules ------------------------------------------------------------------------------------------
module "iks_cluster" {
  source  = "terraform-cisco-modules/iks/intersight"
  version = "2.1.2"

  ip_pool = {
    use_existing = true
    name         = "FSO-SRE-Kubernetes"
  }

  sysconfig = {
    use_existing = true
    name         = "fso-sre-test-02-sys-config-policy"
  }

  k8s_network = {
    use_existing = true
    name         = "fso-sre-test-02-network-policy"
  }

  # Version policy.
  versionPolicy = {
    useExisting = true
    policyName  = "FSO-Kube-1.19.15-iks.3"
  }

  tr_policy = {
    use_existing = false
    create_new   = false
    name         = "trusted-registry"
  }

  runtime_policy = {
    use_existing = false
    create_new   = false

#   name                 = "runtime"
#   http_proxy_hostname  = "t"
#   http_proxy_port      = 80
#   http_proxy_protocol  = "http"
#   http_proxy_username  = null
#   http_proxy_password  = null
#   https_proxy_hostname = "t"
#   https_proxy_port     = 8080
#   https_proxy_protocol = "https"
#   https_proxy_username = null
#   https_proxy_password = null
  }

  # Infra Config Policy Information.
  infraConfigPolicy = {
    use_existing = true
    policyName   = "FSO-HX-SRE-2001"
  }

  instance_type = {
    use_existing = true
    name         = "FSO-VM-Instance-4-40-16"
  }

  # Cluster information.
  cluster = {
    name                = var.cluster_name
    action              = "Deploy"
    wait_for_completion = false
    worker_nodes        = 3
    load_balancers      = 5
    worker_max          = 20
    control_nodes       = 1
    ssh_user            = "iksadmin"
    ssh_public_key      = var.ssh_key
  }

  # Organization and Tags.
  organization = var.organization
  tags         = var.tags
}

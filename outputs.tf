# Outputs ------------------------------------------------------------------------------------------
output "k8s_cluster_moid" {
  description = "Kubernetes IKS managed object ID."
  value       = module.iks_cluster.k8s_cluster_moid
}

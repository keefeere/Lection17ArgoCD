
provider "helm" {
  kubernetes {
	config_path = pathexpand(local.kube_config)
  }
}

provider "kubernetes" {
  host = local.kube_host
  config_path = pathexpand(local.kube_config)
# }

# provider "argocd" {
#   server_addr = "argocd.keefeere.tk:80"
#   username = "admin"
#   password = "admin"
#   insecure    = true  
#   plain_text = true
#   grpc_web = true

# }

provider "helm" {
  kubernetes {
	config_path = pathexpand(local.kube_config)
  }
}

provider "kubernetes" {
  host = local.kube_host
  config_path = pathexpand(local.kube_config)
}


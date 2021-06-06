resource "kubectl_manifest" "argo_cd_appofapps" {
    yaml_body = <<YAML
project: default
source:
  repoURL: 'https://github.com/keefeere/Lection17ArgoCD.git'
  path: apps
  targetRevision: master
  directory:
    recurse: true
    jsonnet: {}
destination:
  server: 'https://kubernetes.default.svc'
  namespace: default
syncPolicy:
  automated:
    prune: true
YAML
}


Lection 16 Homework
==========

**Vagrant Kubernetes provision on baremetal.  
Terraform and Helm deployment off NGINX demosite  
with Traefic ingress controller and SSL ACME certs**

To provision k8s cluster make some preparations:

* Install [Vagrant](https://www.vagrantup.com/docs/installation)
* Install [Terraform CLI](https://www.terraform.io/downloads.html)
* Install [Helm](https://helm.sh/docs/intro/install/)
* Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-specific-operating-systems)
(On Windows 10 install [WSL](https://docs.microsoft.com/ru-ru/windows/wsl/install-win10) and see [this](https://www[.reddit.com/r/ansible/comments/bpi3nr/ansible_on_windows_10_via_wsl_working_without/) or [this](https://www.jeffgeerling.com/blog/2017/using-ansible-through-windows-10s-subsystem-linux) guide to use Ansible on WSL)
* Install [kubectl](https://kubernetes.io/ru/docs/tasks/tools/install-kubectl/)

Register your domain name, make A record, and setup port forwarding on ip with mac 0800279CC9D9 with 80, 443 ports.

Once preparations complete start your terminal in project dir and enter this code:

```bash
cd HAProxy 
vagrant up 
cd ..
cd k8svagrant
vagrant up 
cd ..
cd terraform
terraform init
helm repo update
terraform apply
kubectl -n default describe sa
kubectl describe secret -n default kubernetes-dashboard-token-nNNNn
kubectl proxy
```
  \* change _nNNNn_ on second kubectl command with token name from first kubectl command

Open your preffered browser, go to
http://localhost:8001/api/v1/namespaces/default/services/https:kubernetes-dashboard:https/proxy/#/pod?namespace=default  
and login with token that you obtain with kubectl command.
You will see [Kubernetes Dashboard](https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/):
![k8s dashboard](https://d33wubrfki0l68.cloudfront.net/349824f68836152722dab89465835e604719caea/6e0b7/images/docs/ui-dashboard.png)

Also you can go to your domain and see nginx welcome page:

![nginx wellcome page](https://assets.digitalocean.com/articles/AppArmor_Nginx/1.jpg)
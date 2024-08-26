# Kubernetes Practice
```bash
    1  kubectl version
    2  ls -l /etc/rancher/k3s/k3s.yaml
    3  sudo chmod 644 /etc/rancher/k3s/k3s.yaml
    4  sudo chown $(whoami) /etc/rancher/k3s/k3s.yaml
    5  sudo k3s server --write-kubeconfig-mode 644
    6  mkdir -p ~/.kube
    7  sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
    8  sudo chown $(whoami) ~/.kube/config
    9  export KUBECONFIG=~/.kube/config
   10  kubectl version
   11  kubectl version --output=yaml
   12  sudo /usr/local/bin/k3s-uninstall.sh
```  
+ Installing Kubernetes
```bash
   13  curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644
   14  kubectl version
   15  export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
   16  mkdir -p ~/.kube
   17  sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
   18  sudo chown $(whoami) ~/.kube/config
   19  export KUBECONFIG=~/.kube/config
   20  kubectl get nodes
   21  kubectl get pods --all-namespaces
```  
+ Installing Helm
```  bash
   22  kubectl version
   23  helm ls
   24  curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
   25  chmod 700 get_helm.sh
   26  ./get_helm.sh
   27  helm ls
   28  kubectl get crd
   29  helm repo add jetstack https://charts.jetstack.io
   30  helm repo update
   31  helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.10.1 --set installCRDs=true
   32  helm version
```  
+ Install Cert manager
```bash
   33  curl -L -o kubectl-cert-manager.tar.gz https://github.com/cert-manager/cert-manager/releases/download/v1.12.11/kubectl-cert_manager-linux-amd64.tar.gz
   34  tar xzf kubectl-cert-manager.tar.gz
   35  sudo mv kubectl-cert_manager /usr/local/bin
   36  kubectl cert-manager check api
   37  nano clusterissuer.yaml
   38  kubectl create -f clusterissuer.yaml 
   39  kubectl get clusterissuers
   40  kubectl get crd | grep cert-manager
   41  kubectl get secret | grep rancher
   42  wget https://github.com/vmware-tanzu/velero/releases/download/v1.10.0/velero-v1.10.0-linux-amd64.tar.gz
   43  tar -zxvf velero-v1.10.0-linux-amd64.tar.gz
   44  sudo mv velero-v1.10.0-linux-amd64/velero /usr/local/bin/
   45  curl -sfL https://get.k3s.io | K3S_TOKEN=SECRET sh -s - server --cluster-init
   46  sudo chmod 644 /etc/rancher/k3s/k3s.yaml
   47  kubectl version
   48  kubectl get nodes
   49  kubectl get clusterissuers
   50  kubectl get all
```  
+ Installing Caértificate
```  bash
   51  mkdir -p /home/ubuntu/.rancher/k3s/server/tls/etcd/
   52  sudo cat /var/lib/rancher/k3s/server/tls/client-ca.crt > /home/ubuntu/.rancher/k3s/server/tls/etcd/client.crt
   53  sudo cat /var/lib/rancher/k3s/server/tls/client-ca.key > /home/ubuntu/.rancher/k3s/server/tls/etcd/client.key
   54  sudo apt-get update -y
   55  history
   58  history > history.txt
```  
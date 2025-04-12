# DevOps Lab: Terraform + Kubernetes on AWS

This project provisions a complete AWS EKS cluster using Terraform, deploys a containerized Node.js app using Kubernetes manifests, and installs monitoring with Prometheus & Grafana via Helm.

## Prerequisites

- AWS CLI
- Terraform >= 1.5.x
- kubectl
- eksctl
- Docker
- Helm (optional)

## Setup

### 1. Clone and configure Terraform
```bash
cd terraform
terraform init
terraform apply
```

### 2. Configure kubectl
```bash
aws eks --region <region> update-kubeconfig --name devops-lab-cluster
```

### 3. Build and push Docker image
```bash
cd app
docker build -t your-dockerhub/devops-app:latest .
docker push your-dockerhub/devops-app:latest
```

### 4. Deploy app
```bash
cd ../k8s
kubectl apply -f .
```

### 5. (Optional) Deploy monitoring
```bash
cd ../helm
chmod +x prometheus-grafana.sh
./prometheus-grafana.sh
```

## Cleanup
```bash
cd terraform
terraform destroy
```
# Node Demo App on AWS Fargate

🚀 A fully-managed, demo-ready architecture for running a containerised Node.js app on **AWS Fargate** with:
- **Application Load Balancer (ALB)**
- **HTTPS (ACM Certificate)**
- **Custom Domain (Route53)**
- **CloudWatch Logs**
- **GitHub Actions CI/CD**

This project shows how to go from **idea → online** without managing servers or Kubernetes.

---

## 📐 Architecture

- **Node.js app** containerised with Docker (`node:20-alpine`)
- **ECS Fargate Task Definition** runs the container
- **Application Load Balancer (ALB)** exposes traffic on port 80/443
- **Route53 DNS** maps `demo.iifancy.com` → ALB
- **ACM Certificate** enables HTTPS
- **CloudWatch Logs** capture container logs
- **CloudFormation** templates define everything as code
- **GitHub Actions** handles CI/CD (build, push to ECR, deploy)

---

## 🛠 Prerequisites

- AWS CLI configured (`aws configure`)
- Docker with `buildx` enabled
- Domain hosted in Route53 (e.g., `iifancy.com`)
- ACM certificate for subdomain (e.g., `demo.iifancy.com`)

---

## 🚀 Deploy

### 1. Simple Version (HTTP only)

```bash
bash deploy
bash deploy-full

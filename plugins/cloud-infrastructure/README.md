# Cloud Infrastructure Plugin

> Multi-cloud architecture, Terraform modules, and infrastructure-as-code mastery.

**Cloud Infrastructure** provides:
- **4 Skills** - Terraform, multi-cloud, networking, cost optimization
- **6 Agents** - Cloud architects for AWS, GCP, Azure, hybrid, networking
- **No Commands** - Agent-driven workflows

**Result**: Scalable, cost-effective cloud infrastructure defined as code.

---

## Quick Start

### Invoke Agents
```
@cloud-architect design a multi-region AWS setup for high availability
@terraform-specialist create a reusable VPC module
@network-engineer design hybrid connectivity between AWS and on-prem
@kubernetes-architect plan a production EKS deployment
```

---

## The 4 Skills

### 1. Terraform Module Library
> Reusable, production-ready infrastructure modules

**Core Modules:**
| Module | Purpose |
|--------|---------|
| VPC | Network isolation, subnets, routing |
| EKS/GKE/AKS | Managed Kubernetes clusters |
| RDS/CloudSQL | Managed databases |
| S3/GCS | Object storage with policies |
| IAM | Identity and access management |

**Best Practices:**
```hcl
# Module structure
module "vpc" {
  source = "./modules/vpc"

  name               = "production"
  cidr               = "10.0.0.0/16"
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]

  private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false  # HA: one NAT per AZ
}
```

---

### 2. Multi-Cloud Architecture
> Design principles for AWS, GCP, and Azure

**Cloud Comparison:**
| Concern | AWS | GCP | Azure |
|---------|-----|-----|-------|
| Compute | EC2, ECS, EKS | Compute Engine, GKE | VMs, AKS |
| Database | RDS, DynamoDB | CloudSQL, Firestore | CosmosDB, SQL |
| Serverless | Lambda | Cloud Functions | Functions |
| Storage | S3 | GCS | Blob Storage |

**Multi-Cloud Patterns:**
- **Active-Active**: Workloads on multiple clouds
- **DR/Backup**: Primary on one, DR on another
- **Best-of-Breed**: Use each cloud's strengths
- **Avoid Lock-in**: Containerize, use Terraform

---

### 3. Hybrid Cloud Networking
> Connect cloud, on-premises, and edge

**Connectivity Options:**
| Option | Speed | Use Case |
|--------|-------|----------|
| Site-to-Site VPN | ~1.25 Gbps | Quick setup, backup |
| Direct Connect/Interconnect | 1-100 Gbps | Production workloads |
| Transit Gateway | Hub-and-spoke | Multi-VPC, multi-region |
| Mesh VPN | Varies | Multi-site |

**Architecture:**
```
On-Premises DC
      |
  Direct Connect
      |
Transit Gateway ---- VPC Production
      |          ---- VPC Staging
      |          ---- VPC Development
      |
Shared Services VPC
```

---

### 4. Cost Optimization
> Reduce cloud spend without sacrificing performance

**Key Strategies:**

| Strategy | Savings | Effort |
|----------|---------|--------|
| Reserved Instances | 30-60% | Low |
| Spot/Preemptible | 60-90% | Medium |
| Right-sizing | 20-40% | Medium |
| Auto-scaling | Variable | High |
| Storage tiering | 30-50% | Low |

**Quick Wins:**
```hcl
# Enable S3 lifecycle policies
resource "aws_s3_bucket_lifecycle_configuration" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    id     = "archive-old-objects"
    status = "Enabled"

    transition {
      days          = 90
      storage_class = "GLACIER"
    }
  }
}
```

**Monitoring:**
- AWS Cost Explorer / GCP Billing / Azure Cost Management
- Set budget alerts
- Tag resources for cost allocation
- Review unused resources weekly

---

## The 6 Agents

| Agent | Expertise |
|-------|-----------|
| **cloud-architect** | High-level cloud strategy and design |
| **terraform-specialist** | IaC, modules, state management |
| **network-engineer** | VPCs, peering, hybrid connectivity |
| **kubernetes-architect** | Managed K8s, cluster design |
| **hybrid-cloud-architect** | Multi-cloud, on-prem integration |
| **deployment-engineer** | CI/CD, deployment automation |

---

## Plugin Structure

```
cloud-infrastructure/
├── README.md                              # This file
│
├── skills/                                # Knowledge base
│   ├── terraform-module-library/
│   │   ├── SKILL.md                       # Module patterns
│   │   └── references/
│   │       └── aws-modules.md             # AWS-specific modules
│   ├── multi-cloud-architecture/
│   │   └── SKILL.md                       # Multi-cloud patterns
│   ├── hybrid-cloud-networking/
│   │   └── SKILL.md                       # Networking patterns
│   └── cost-optimization/
│       └── SKILL.md                       # Cost patterns
│
└── agents/                                # Specialist agents
    ├── cloud-architect.md                 # Strategy & design
    ├── terraform-specialist.md            # IaC expert
    ├── network-engineer.md                # Networking expert
    ├── kubernetes-architect.md            # K8s expert
    ├── hybrid-cloud-architect.md          # Hybrid/multi-cloud
    └── deployment-engineer.md             # Deployment automation
```

---

## Usage Examples

### Example 1: New AWS Environment
```
User: Set up a production AWS environment with EKS, RDS, and proper networking

@cloud-architect designs:
1. VPC Architecture
   - 3 AZs for high availability
   - Public subnets for ALB
   - Private subnets for EKS/RDS
   - NAT Gateways per AZ

2. EKS Cluster
   - Managed node groups
   - Cluster autoscaler
   - ALB Ingress Controller
   - External Secrets Operator

3. RDS PostgreSQL
   - Multi-AZ deployment
   - Automated backups
   - Parameter groups optimized

4. Security
   - Security groups (least privilege)
   - IAM roles for service accounts
   - Secrets in AWS Secrets Manager
```

### Example 2: Cost Reduction
```
User: Our AWS bill is $50k/month, help reduce it

@cloud-architect analyzes:
1. Compute (40% of bill)
   - 20 instances never scale down -> Auto Scaling Groups
   - Dev/staging run 24/7 -> Scheduled scaling
   - No reserved capacity -> Purchase 1-year RIs

2. Storage (25% of bill)
   - 5TB in S3 Standard (rarely accessed) -> Glacier
   - EBS volumes oversized -> Right-size based on metrics

3. Networking (15% of bill)
   - NAT Gateway data transfer -> Consider VPC endpoints
   - Inter-region traffic -> Cache locally

Projected savings: $18k/month (36%)
```

### Example 3: Multi-Cloud Strategy
```
User: We need to avoid AWS lock-in while using their services

@hybrid-cloud-architect recommends:
1. Containerize Everything
   - EKS now, but Kubernetes is portable
   - Use Helm for deployments

2. Abstract Cloud Services
   - Use Terraform for all clouds
   - Store state in cloud-agnostic backend

3. Data Portability
   - Standard formats (PostgreSQL, not DynamoDB)
   - S3-compatible storage (works with GCS, MinIO)

4. Monitoring
   - Cloud-agnostic: Datadog, Grafana Cloud
   - Or self-hosted: Prometheus + Grafana
```

---

## When to Use This Plugin

### Perfect For:
- Cloud architecture design
- Infrastructure-as-code (Terraform)
- Multi-cloud and hybrid strategies
- Network design and connectivity
- Cost optimization initiatives

### Combines Well With:
- **kubernetes-operations** - K8s workload management
- **cicd-automation** - Infrastructure CI/CD
- **security-compliance** - Cloud security posture
- **observability-monitoring** - Cloud monitoring

---

## Technology Reference

| Category | Technologies |
|----------|--------------|
| IaC | Terraform, Pulumi, CloudFormation, CDK |
| Cloud Providers | AWS, GCP, Azure, DigitalOcean |
| Networking | VPC, Direct Connect, Transit Gateway |
| Container Platforms | EKS, GKE, AKS, OpenShift |
| Cost Tools | AWS Cost Explorer, Infracost, Spot.io |

---

## Key Patterns

### Terraform State Management
```hcl
terraform {
  backend "s3" {
    bucket         = "company-terraform-state"
    key            = "production/vpc/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
```

### Environment Separation
```
environments/
├── production/
│   ├── main.tf
│   └── terraform.tfvars
├── staging/
│   ├── main.tf
│   └── terraform.tfvars
└── development/
    ├── main.tf
    └── terraform.tfvars

modules/
├── vpc/
├── eks/
└── rds/
```

### Security Best Practices
- Encrypt everything at rest and in transit
- Use IAM roles, not access keys
- Enable CloudTrail/Audit logging
- Implement VPC flow logs
- Use private endpoints where possible

---

## License

Part of the LibreUIUX project - MIT License

---

*"Infrastructure should be as reliable as you forget it exists."*

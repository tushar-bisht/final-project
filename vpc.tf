module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "tushar-final-project"
  cidr = "192.168.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
  public_subnets  = ["192.168.101.0/24", "192.168.102.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
    "kubernetes.io/cluster/tushar-final-project" = "shared"

  }
}

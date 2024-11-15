module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name = var.vpc_Name
  cidr = var.var.VpcCIDR
  azs  = [var.Zone1, var.Zone2, var.Zone3]
  private_subnets = [var.PrivSub1CIDR,var.PrivSub2CIDR,var.PrivSub3CIDR]
  public_subnets  = [var.PubSub1CIDR, var.PubSub2CIDR, var.PubSub3CIDR]
  enable_nat_gateway = true
  single_nat_gatway  = true
  enable_dns_hostname = true
  enable_dns_support  = true

  tags = {
    Terraform = "true"
    Environment = "Prod"
  }
  vpc_tags  = {
    Name  = var.VPC_NAME
  }

}

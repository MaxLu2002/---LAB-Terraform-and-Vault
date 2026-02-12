locals {
    vpc_cidr = var.vpc_cidr #"10.0.0.0/16"
    
    public_subnet_cidr  = cidrsubnet(local.vpc_cidr, 2, 0) #"10.0.0.0/18"
    private_subnet_cidr = cidrsubnet(local.vpc_cidr, 2, 1) #"10.0.64.0/18"
}
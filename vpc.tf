module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = "aws-vpc-with-terraform"
    cidr = "10.10.0.0/16"

    azs = slice(data.aws_availability_zones.available.names,0,2)
    private_subnets = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
    public_subnets = ["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]

    enable_nat_gateway = false
    enable_vpn_gateway = false

    tags = {
        Name = "${var.cluster-name}-vpc"
    }
}


module "network" {
  source            = "app.terraform.io/kumarpolaris/network/aws"
  version           = "1.0.0"
  vpc_cidr          = "10.20.0.0/16"
  vpc_name          = "Dev"
  PublicSubnetCidr  = ["10.20.1.0/24", "10.20.2.0/24", "10.20.3.0/24"]
  az                = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  PrivateSubnetCidr = ["10.20.10.0/24", "10.20.20.0/24", "10.20.30.0/24","10.20.40.0/24"]
  env               = "dev"
  NGW_ID            = null
}

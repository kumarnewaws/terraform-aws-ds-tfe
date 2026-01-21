module "ec2" {
  source  = "app.terraform.io/kumarpolaris/ec2/aws"
  version = "1.0.0"
  env     = module.network.env
  ami = {
    "ap-south-1" = "ami-02b8269d5e85954ef"
    "us-east-1"  = "ami-0ecb62995f68bb549"
  }
  region        = var.region
  instance_type = "t3.micro"
  key_name = {
    "ap-south-1" = "Desktop_key"
    "us-east-1"  = "Desktop_key"
  }
  subnet_id         = module.network.Public_subnet_id
  private_subnet_id = module.network.private_subnet_id
  sg_id             = module.security.sg_id
  vpc_name          = module.network.vpc_name
  depends_on        = [module.network]
}

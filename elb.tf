module "elb" {
  source         = "app.terraform.io/kumarpolaris/elb/aws"
  version        = "1.0.0"
  tgname         = "Dev-TG"
  vpc_id         = module.network.vpc_id
  env            = module.network.env
  PrivateServers = null
  PublicServers  = module.ec2.PublicServerId
  nlbname        = "devnlb"
  Public_subnets = module.network.Public_subnet_id
  sg_id          = module.security.sg_id
}

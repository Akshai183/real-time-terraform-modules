#Using networking modules for vpc, subnets & routing configuration.

module "alpha_vpc_1" {
  source             = "../modules/1.network"
  vpc_cidr           = "192.168.0.0/16"
  vpc_name           = "ALPHADEV"
  environment        = var.environment
  public_cidr_block  = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  private_cidr_block = ["192.168.10.0/24", "192.168.20.0/24", "192.168.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
  owner              = "JavaAppTeam"
}

module "alpha_vpc_2" {
  source             = "../modules/1.network"
  vpc_cidr           = "172.16.0.0/16"
  vpc_name           = "ALPHADEV-2"
  environment        = var.environment
  public_cidr_block  = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  private_cidr_block = ["172.16.10.0/24", "172.16.20.0/24", "172.16.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
  owner              = "JavaAppTeam"
}
#Using networking modules for vpc, subnets & routing configuration.

module "reliance_vpc_1" {
  source             = "../modules/1.network"
  vpc_cidr           = "172.16.0.0/16"
  vpc_name           = "RelainceDev"
  environment        = var.environment
  public_cidr_block  = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  private_cidr_block = ["172.16.10.0/24", "172.16.20.0/24", "172.16.30.0/24"]
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
  owner              = "JavaAppTeam"
}
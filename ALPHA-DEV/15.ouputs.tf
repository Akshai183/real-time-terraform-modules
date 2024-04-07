output "vpc_id" {
  value = module.alpha_vpc_1.vpc_id
}

output "public_subnets_id" {
  value = module.alpha_vpc_1.public_subnets_id
}

output "private_subnets_id" {
  value = module.alpha_vpc_1.private_subnets_id
}

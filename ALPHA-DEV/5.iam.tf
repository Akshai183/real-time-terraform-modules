module "alpha_iam_1" {
  source              = "../modules/4.iam"
  env                 = lower(module.alpha_vpc_1.environment)
  rolename            = "devsecopsb39testrole"
  instanceprofilename = "devsecopsb39instprofile2"
  iam_policy_name     = "devsecopsb39-iampolicy"
}
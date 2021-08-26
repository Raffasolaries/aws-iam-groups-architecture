module "association" {
 source = "./modules/users2groups"
 users2groups = var.users2groups
}
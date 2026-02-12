module "dynamodb" {
    source = "./modules/dynamodb"
    
}
module "secretsmanager" {
    source = "./modules/secretsmanager"

}
module "elasticsearch" {
    source = "./modules/elasticsearch"

}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = module.secretsmanager.secret_id
  secret_string = "datacenter-<env>-value"
}
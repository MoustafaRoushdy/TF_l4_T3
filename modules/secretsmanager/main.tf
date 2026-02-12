resource "aws_secretsmanager_secret" "example" {
  name = "datacenter-<env>-secret"
}
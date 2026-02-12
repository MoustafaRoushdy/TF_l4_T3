resource "aws_elasticsearch_domain" "example" {
  domain_name           = "datacenter-<env>-es"
}
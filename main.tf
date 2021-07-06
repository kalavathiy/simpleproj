provider "aws"{
region= "us-west-2"
}
data "aws_secretsmanager_secret" "name" {
 name = "mycred"
}
data "aws_secretsmanager_secret_version" "example" {
  secret_id = "mycred"
  version_stage = "AWSCURRENT"
}
output "username" {
  value = jsondecode(data.aws_secretsmanager_secret_version.example.secret_string)["kala"]
  description = "The usename for login"
  sensitive   = true
}

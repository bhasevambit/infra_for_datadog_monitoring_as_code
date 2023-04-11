terraform {
  backend "s3" {
    bucket = "terraform-backend-353981446712"
    key    = "Infra_DataDog_Monitoring_for_AWS_tfstateFile/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.62.0"
    }
    datadog = {
      source = "DataDog/datadog"
    }
  }

  required_version = ">= 1.4.4"
}

provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Managed   = "terraform"
      Reference = "datadog_official_or_other_references"
    }
  }
}

# Configure the Datadog provider
provider "datadog" {
  api_url = "https://ap1.datadoghq.com" #DataDogのAP1サイトを指定
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}





terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}

provider "aws" {
    shared_config_files = ["~/.aws/config"]
    shared_credentials_files = ["~/.aws/credentials"]
    profile = "default"
    
    default_tags {
        tags = {
            Owner = "liorm"
            bootcamp = "19"
            expiration_date = "01-01-2025"
        }
    }
}





provider "aws" {
  profile = default
  region  = "us-west-1"
}

provider "aws" {
  alias      = "plain_text_access_keys_provider"
  region     = "us-west-1"
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

terraform {
  backend "s3" {
    encrypt = true
  }
}

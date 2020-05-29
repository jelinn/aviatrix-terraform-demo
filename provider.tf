provider "aviatrix" {
  version = "~> 2.14"
}

provider "aws" {
  region = "us-east-1"
  alias  = "east1"
}

provider "aws" {
  region = "us-east-2"
  alias  = "east2"
}

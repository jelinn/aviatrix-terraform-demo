/*
module "aviatrix-create-avtx-vpcs-area1" {
  source  = "app.terraform.io/Aviatrix-TFC-JL/vpc-gw/aviatrix"
  version = "0.0.4"
  cloud_type     = 1
  region         = var.aws_region1
  account_name   = var.aws_account_name
  spoke_gw_size  = var.aws_spoke_gw_size
  avx_transit_gw = module.aviatrix-create-transit-aws-area1.avtx_gw_name
  vpc_count      = 4

  providers = {
    aws = aws.east1
  }
}

module "aviatrix-create-avtx-vnets-area1" {
  source  = "app.terraform.io/Aviatrix-TFC-JL/vpc-gw/aviatrix"
  version = "0.0.4"
  cloud_type     = 8
  region         = var.azure_region1
  account_name   = var.azure_account_name
  spoke_gw_size  = var.azure_spoke_gw_size
  avx_transit_gw = module.aviatrix-create-transit-azure-area1.avtx_gw_name
  vpc_count      = 4

  providers = {
    aws = aws.east1
  }
}

module "aviatrix-create-transit-aws-area1" {
  source  = "app.terraform.io/Aviatrix-TFC-JL/transit-net/aviatrix"
  version = "0.0.3"
  cloud_type     = 1
  region         = var.aws_region1
  account_name   = var.aws_account_name
  avtx_gw_size   = var.aws_transit_gw_size

  providers = {
    aws = aws.east1
  }
}

module "aviatrix-create-transit-azure-area1" {
  source  = "app.terraform.io/Aviatrix-TFC-JL/transit-net/aviatrix"
  version = "0.0.3"
  cloud_type     = 8
  region         = var.azure_region1
  account_name   = var.azure_account_name
  avtx_gw_size   = var.azure_transit_gw_size

  providers = {
    aws = aws.east1
  }
}

resource "aviatrix_transit_gateway_peering" "test_transit_gateway_peering" {
  transit_gateway_name1 = module.aviatrix-create-transit-aws-area1.avtx_gw_name
  transit_gateway_name2 = module.aviatrix-create-transit-azure-area1.avtx_gw_name
}

module "aviatrix-create-transit-aws-area2" {
  source  = "app.terraform.io/Aviatrix-TFC-JL/transit-net/aviatrix"
  version = "0.0.5"
  cloud_type     = 1
  region         = "us-east-2"
  account_name   = var.aws_account_name
  avtx_gw_size   = var.aws_transit_gw_size

  providers = {
    aws = aws.east2
  }
}

resource "aviatrix_transit_gateway_peering" "test_transit_gateway_peering2" {
  transit_gateway_name1 = module.aviatrix-create-transit-aws-area1.avtx_gw_name
  transit_gateway_name2 = module.aviatrix-create-transit-aws-area2.avtx_gw_name
}
    
resource "aviatrix_transit_gateway_peering" "test_transit_gateway_peering3" {
  transit_gateway_name1 = module.aviatrix-create-transit-aws-area2.avtx_gw_name
  transit_gateway_name2 = module.aviatrix-create-transit-azure-area1.avtx_gw_name
}
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  required_version = ">= 1.0"
}

resource "aws_cloudformation_stack" "oe_patterns_pixelfed" {
  name = var.stack_name

  template_url = "https://s3.amazonaws.com/awsmp-fulfillment-cf-templates-prod/93b3eaa6-e079-44f0-ab14-0b7dd0d3809f/5db4ea3c24c945c99f0aa536c190693b.template"

  capabilities = ["CAPABILITY_NAMED_IAM"]

  parameters = {
    AlbCertificateArn                        = var.alb_certificate_arn
    AlbIngressCidr                           = var.alb_ingress_cidr
    AsgDataVolumeSize                        = var.asg_data_volume_size
    AsgDataVolumeSnapshot                    = var.asg_data_volume_snapshot
    AsgInstanceType                          = var.asg_instance_type
    AsgReprovisionString                     = var.asg_reprovision_string
    AssetsBucketName                         = var.assets_bucket_name
    DbBackupRetentionPeriod                  = var.db_backup_retention_period
    DbInstanceClass                          = var.db_instance_class
    DbSecretArn                              = var.db_secret_arn
    DbSnapshotIdentifier                     = var.db_snapshot_identifier
    DnsHostname                              = var.dns_hostname
    DnsRoute53HostedZoneName                 = var.dns_route53_hosted_zone_name
    Name                                     = var.name
    RedisClusterCacheNodeType                = var.redis_cluster_cache_node_type
    RedisClusterNumCacheNodes                = var.redis_cluster_num_cache_nodes
    SesInstanceUserAccessKeySerial           = var.ses_instance_user_access_key_serial
    SesCreateDomainIdentity                  = var.ses_create_domain_identity
    VpcCidr                                  = var.vpc_cidr
    VpcId                                    = var.vpc_id
    VpcNatGatewayPerSubnet                   = var.vpc_nat_gateway_per_subnet
    VpcPrivateSubnet1Cidr                    = var.vpc_private_subnet1_cidr
    VpcPrivateSubnet1Id                      = var.vpc_private_subnet1_id
    VpcPrivateSubnet2Cidr                    = var.vpc_private_subnet2_cidr
    VpcPrivateSubnet2Id                      = var.vpc_private_subnet2_id
    VpcPublicSubnet1Cidr                     = var.vpc_public_subnet1_cidr
    VpcPublicSubnet1Id                       = var.vpc_public_subnet1_id
    VpcPublicSubnet2Cidr                     = var.vpc_public_subnet2_cidr
    VpcPublicSubnet2Id                       = var.vpc_public_subnet2_id
  }
}

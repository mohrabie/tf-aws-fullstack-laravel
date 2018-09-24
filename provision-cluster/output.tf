output "vpc_region" {
  value = "${var.vpc_region}"
}

output "vpc_id" {
  value = "${aws_vpc.vpc_name.id}"
}

output "vpc_public_sn_id" {
  value = "${aws_subnet.vpc_public_sn.id}"
}

output "vpc_private_sn_id" {
  value = "${aws_subnet.vpc_private_sn.id}"
}

output "vpc_public_sg_id" {
  value = "${aws_security_group.vpc_public_sg.id}"
}

output "vpc_private_sg_id" {
  value = "${aws_security_group.vpc_private_sg.id}"
}
output "ecs-service-role-arn" {
  value = "${aws_iam_role.ecs-service-role.arn}"
}

output "ecs-instance-role-name" {
  value = "${aws_iam_role.ecs-instance-role.name}"
}

output "ecs-load-balancer-name" {
    value = "${aws_alb.ecs-load-balancer.name}"
}

output "loadbalancer_address" {
  value = "${aws_alb.ecs-load-balancer.dns_name}"
}

output "ecs-target-group-arn" {
    value = "${aws_alb_target_group.ecs-target-group.arn}"
}

output "engine" {
  value = "${aws_db_instance.pg_db.engine}"
}

output "pg_engine_version" {
  value = "${aws_db_instance.pg_db.engine_version}"
}

output "pg_endpoint" {
  value = "${aws_db_instance.pg_db.endpoint}"
}

output "pg_port" {
  value = "${aws_db_instance.pg_db.port}"
}

output "pg_db_name" {
  value = "${aws_db_instance.pg_db.name}"
}

output "pg_db_user" {
  value = "${aws_db_instance.pg_db.username}"
}

output "subnet_id" {
  value = "${aws_subnet.vpc_public_sn.id}"
}

output "subnet_group_name" {
  value = "${aws_elasticache_subnet_group.demo_redis_subnet_group.name}"
}

output "engine_version_redis" {
  value = "${aws_elasticache_cluster.redisInstance.engine_version}"
}

output "redis_port" {
  value = "${aws_elasticache_cluster.redisInstance.port}"
}

output "redis_cache_node_0_address" {
  value = "${aws_elasticache_cluster.redisInstance.cache_nodes.0.address}"
}

output "redis_cache_nodes_0_availability_zone" {
  value = "${aws_elasticache_cluster.redisInstance.cache_nodes.0.availability_zone}"
}

####################### Cloud Front #######################
#The identifier for the distribution. For example: EDFDVBD632BHDS5.
output "cloudfront_id" { 
  value = "${module.cf_cdn.cf_id}"
}


#The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID.
output "cloudfront_arn" {
  value = "${module.cf_cdn.cf_arn}"
}

#The current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system.
output "cloudfront_status" {
  value = "${module.cf_cdn.cf_status}"
}

#active_trusted_signers - The key pair IDs that CloudFront is aware of for each trusted signer, if the distribution is set up to serve private content with signed URLs.
output "cloudfront_active_trusted_signers" {
  value = "${module.cf_cdn.cf_active_trusted_signers}"
}

#The domain name corresponding to the distribution. For example: d604721fxaaqy9.cloudfront.net.
output "cloudfront_domain_name" {
  value = "${module.cf_cdn.cf_domain_name}"
}

#The current version of the distribution's information. For example: E2QWRUHAPOMQZL.
output "cloudfront_etag" {
  value = "${module.cf_cdn.cf_etag}"
}

#The CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to. This attribute is simply an alias for the zone ID Z2FDTNDATAQYW2.
output "cloudfront_hosted_zone_id" {
  value = "${module.cf_cdn.cf_hosted_zone_id}"
}
############################ S3 ######################

#S3 bucket id
output "cdn_s3_bucket_id" {
  value = "${module.cf_cdn.s3_bucket_id}"
}

#S3 bucket arn
output "cdn_s3_bucket_arn" {
  value = "${module.cf_cdn.s3_bucket_arn}"
}


#The access key ID.
output "cdn_iam_access_key_id" {
  value = "${module.cf_cdn.iam_access_key_id}"
}

#The IAM user associated with this access key.
output "cdn_iam_access_user" {
  value = "${module.cf_cdn.iam_access_user}"
}

#The fingerprint of the PGP key used to encrypt the secret
output "cdn_iam_access_key_fingerprint" {
  value = "${module.cf_cdn.iam_access_key_fingerprint}"
}

# The secret access key. Note that this will be written to the state file. Please supply a pgp_key instead, which will prevent the secret from being stored in plain text
output "cdn_iam_access_secret" {
  value = "${module.cf_cdn.iam_access_secret}"
}

# The encrypted secret, base64 encoded. ~> NOTE: The encrypted secret may be decrypted using the command line, for example: terraform output secret | base64 --decode | keybase pgp decrypt.
output "cdn_iam_access_encrypted_secret" {
  value = "${module.cf_cdn.iam_access_encrypted_secret}"

##################### Elastic Search ######################
}output "elasticsearch_arn" {
  description = "Amazon Resource Name (ARN) of the domain"
  value       = "${module.es.arn}"
}

output "elasticsearch_domain_id" {
  description = "Unique identifier for the domain"
  value       = "${module.es.domain_id}"
}

output "elasticsearch_endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
  value       = "${module.es.endpoint}"
}

/* vim: set et fenc= ff=unix ft=terraform sts=2 sw=2 ts=2 : */


resource "aws_iam_service_linked_role" "es" {
  aws_service_name = "es.amazonaws.com"
}

module "es" {
  source                         = "./tf_aws_elasticsearch"
  domain_name                    = "${var.es_domain_name}"
  vpc_options                    = "${var.vpc_options_list}"
  instance_count                 = 1
  instance_type                  = "t2.medium.elasticsearch"
  dedicated_master_type          = "t2.medium.elasticsearch"
  es_zone_awareness              = false
  ebs_volume_size                = 35
}
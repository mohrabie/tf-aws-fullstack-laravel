# main creds for AWS connection
variable "aws_access_key_id" {
  description = "AWS access key"
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
}

variable "ecs_cluster" {
  description = "ECS cluster name"
}

variable "ecs_key_pair_name" {
  description = "ECS key pair name"
}

variable "availability_zone" {
  description = "availability zone used for the demo, based on region"
  default = {
    eu-west-1 = "eu-west-1a"
    eu-east-1 = "eu-west-1b"
  }
}

variable "cert_arn" {
  description = "domain added certificate arn"
  default = "arn:aws:acm:us-east-1:050543387869:certificate/6e9e521b-7d4a-4330-a838-b783b1e5831e"
}

####### NEW VPC ######
variable "vpc_name" {
  description = "VPC for building demos"
}

variable "vpc_region" {
  description = "AWS region"
}
variable "vpc_cidr_block" {
  description = "Uber IP addressing for demo Network"
}

variable "vpc_public_subnet_1_cidr" {
  description = "Public 0.0 CIDR for externally accessible subnet"
}
variable "vpc_private_subnet_1_cidr" {
  description = "Public 0.0 CIDR for externally accessible subnet"
}
variable "vpc_access_from_ip_range" {
  description = "Access can be made from the following IPs"
}

variable "vpc_options_list" {
  description = "A map of supported vpc options"
  type        = "map"

  default = {
    security_group_ids = ["sg-05944ec2ba46d1523"]
    subnet_ids         = ["subnet-0982c37ebea9cd7ff"]
  }
}

########################### Autoscale Config ################################

variable "max_instance_size" {
  description = "Maximum number of instances in the cluster"
  default = 3
}

variable "min_instance_size" {
  description = "Minimum number of instances in the cluster"
  default = 1
}

variable "desired_capacity" {
  description = "Desired number of instances in the cluster"
  default = 1
}

########################### RDS Config ##################################

variable "postgres_db_name" {
  description = "Postgres Database Name"
  default     = "laravel"
}

variable "postgres_db_username" {
  description = "Postgres Database Username"
  default     = "laraveluser"

}

variable "postgres_db_password" {
  description = "Postgres Database Password"
  default     = "testpass"

}

#variable "vpc_private_sg_id" {
#  description = "Security group ID for Redis instances"
#}

variable "aws_region" {
  description = "AWS region"
  default = "eu-west-1"
}


variable "cloudwatch_prefix" {
  description = "cloudwatch logs prefix"
  default = "noship-cluster"
}

variable "bucket_name" {
  description = "s3 bucket name"
  default = "healiotcdn"
}

variable "es_domain_name" {
  default = "es-tf-domain"
}

// Create a variable for our domain name because we'll be using it a lot.
variable "www_domain_name" {
  default = "cdn.healiot.com"
}

variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
  type        = "string"
  default     = "healiot"

}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = "string"
  default     = "stage"
}

variable "name" {
  description = "Name  (e.g. `bastion` or `db`)"
  type        = "string"
  default     = "cdn"
}
variable "hostname" {
  description = "Name  (e.g. `bastion` or `db`)"
  type        = "string"
  default     = "cdn.healiot.com"
}
variable "parent_zone_name" {
  default     = "healiot.com"
  description = "Name of the hosted zone to contain this record (or specify `parent_zone_id`)"
}
variable "ami_ecs" {
  default     = "ami-0af844a965e5738db"
  description = "based on ecs enhanced ami by region"
}



###################### SSL ###################

variable "root_domain_name" {
  default = "healiot.com"
}
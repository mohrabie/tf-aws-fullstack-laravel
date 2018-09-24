module "cf_cdn" {
  source = "./tf_aws_cloudfront"
  name = "tf-${terraform.env}-cdn"
  domains = ["cdn.healiot.com", "static.healiot.com"]
  certificate_arn = "${var.cert_arn}"

  bucket_name = "tf-${terraform.env}-cdn-bucket"
  comment = "Managed by Terraform"

  log_include_cookies = "false"
  log_bucket          = "tf-${terraform.env}-log-bucket-for-my-cf"

  allowed_methods = ["GET", "HEAD"]

  tags = {
    "Terraform" = "true"
    "Environment" = "${terraform.env}"
  }
}

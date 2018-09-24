resource "aws_elasticache_subnet_group" "demo_redis_subnet_group" {
  name       = "demo-redis-subnet-group"
  subnet_ids = ["${aws_subnet.vpc_private_sn.id}"]
}

resource "aws_elasticache_cluster" "redisInstance" {
  cluster_id           = "demo-redis"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis4.0"
  port                 = 6379
  subnet_group_name    = "${aws_elasticache_subnet_group.demo_redis_subnet_group.name}"
  security_group_ids   = ["${aws_security_group.vpc_private_sg.id}"]
}

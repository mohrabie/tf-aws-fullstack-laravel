resource "aws_db_subnet_group" "pg_subnet_group" {
  name = "pg_subnet_group_1"
  subnet_ids = [
    "${aws_subnet.vpc_public_sn.id}", "${aws_subnet.vpc_private_sn.id}"]
}

resource "aws_db_instance" "pg_db" {
  identifier = "pg"
  allocated_storage = 10
  storage_type = "gp2"
  engine = "postgres"
  engine_version = "9.6"
  instance_class = "db.t2.micro"
  parameter_group_name = "default.postgres9.6"
  skip_final_snapshot = true
  apply_immediately = true
  db_subnet_group_name = "${aws_db_subnet_group.pg_subnet_group.name}"
  vpc_security_group_ids = [
    "${aws_security_group.vpc_public_sg.id}"]
  multi_az = false
  name = "${var.postgres_db_name}"
  username = "${var.postgres_db_username}"
  password = "${var.postgres_db_password}"
}

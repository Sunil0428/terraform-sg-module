resource "aws_security_group" "SG" {
  name        = var.SG
  description = var.SG_desc
  vpc_id      = var.vpc_id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = merge(
    var.common_tags,
    var.SG_tags,
    {
        Name="${local.project_name}-${var.module}"
    }
  )
}
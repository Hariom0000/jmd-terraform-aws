output "security_group_ids" {
  value = {
    app = aws_security_group.app.id
    db  = aws_security_group.db.id
    alb = aws_security_group.alb.id
  }
}

output "app_security_group_id" {
  value = aws_security_group.app.id
}

output "db_security_group_id" {
  value = aws_security_group.db.id
}

output "alb_security_group_id" {
  value = aws_security_group.alb.id
}
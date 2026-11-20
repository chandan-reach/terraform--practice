output "instance_id" {
  value = aws_instance.web-tutedude.id
}

output "public_ip" {
  value = aws_instance.web-tutedude.public_ip
}
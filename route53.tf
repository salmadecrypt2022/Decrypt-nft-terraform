resource "aws_route53_zone" "main" {
  name = "blockchainaustralia.link"
}

resource "aws_route53_zone" "dev" {
  name = "terraform.blockchainaustralia.link"

  tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "dev-ns" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "terraform.blockchainaustralia.link"
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.dev.name_servers
}
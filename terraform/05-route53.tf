data "aws_route53_zone" "hosted_zone" {
  name = var.domain_name
}

data "kubernetes_service" "EKS-ingress-service" {
  metadata {
    name = "nginx-ingress-controller"
  }
  depends_on = [
    helm_release.nginx-ingress-controller
  ]
}

resource "aws_route53_record" "AltSchool-Exam-EKS-record" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.domain_name
  type    = "CNAME"
  ttl     = "300"
  records = [data.kubernetes_service.EKS-ingress-service.status.0.load_balancer.0.ingress.0.hostname]
}

resource "namedotcom_domain_nameservers" "AltSchool-Exam-EKS" {
  domain_name = var.domain_name
  nameservers = [
    "${data.aws_route53_zone.hosted_zone.name_servers.0}",
    "${data.aws_route53_zone.hosted_zone.name_servers.1}",
    "${data.aws_route53_zone.hosted_zone.name_servers.2}",
    "${data.aws_route53_zone.hosted_zone.name_servers.3}",
  ]
}

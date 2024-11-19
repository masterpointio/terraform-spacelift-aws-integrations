module "aws_integrations" {
  source = "../../"

  aws_integrations = var.aws_integrations
  context          = module.this.context
}

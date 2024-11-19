
module "integration_label" {
  for_each = var.aws_integrations
  source   = "cloudposse/label/null"
  version  = "0.25.0"
  name     = format("%s-%s", each.key, each.value.aws_account_id)
  context  = module.this.context
}

resource "spacelift_aws_integration" "default" {
  for_each = var.aws_integrations

  name             = module.integration_label[each.key].id
  role_arn         = each.value.role_arn
  external_id      = each.value.external_id
  duration_seconds = each.value.duration_seconds
  labels           = each.value.labels
  space_id         = each.value.space_id

  generate_credentials_in_worker = each.value.generate_credentials_in_worker
}

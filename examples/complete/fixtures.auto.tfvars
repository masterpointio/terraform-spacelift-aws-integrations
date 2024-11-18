enabled = true

namespace = "mp"

aws_integrations = {
  "foo" = {
    aws_account_id                 = "123456789012"
    role_arn                       = "arn:aws:iam::123456789012:role/Spacelift"
    duration_seconds               = 1200
    labels                         = ["example", "foo"]
    generate_credentials_in_worker = true
  },
  "bar" = {
    aws_account_id = "210987654321"
    role_arn       = "arn:aws:iam::210987654321:role/Spacelift"
    labels         = ["example", "bar"]
  }
}

variable "aws_integrations" {
  description = "Map of AWS integrations with their configurations."
  type = map(object({
    aws_account_id                 = string
    role_arn                       = string
    external_id                    = optional(string, null)
    duration_seconds               = optional(number, 900)
    generate_credentials_in_worker = optional(bool, false)
    labels                         = optional(list(string), [])
    space_id                       = optional(string, "root")
  }))
  default = {}
}

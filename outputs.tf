output "aws_integrations" {
  description = "Map of AWS integration names to their IDs."
  value       = { for name, integration in spacelift_aws_integration.default : name => integration.id }
}

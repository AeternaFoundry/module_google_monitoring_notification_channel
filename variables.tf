variable "monitoring_notification_channels" {
  description = <<EOT
Map of monitoring_notification_channels, attributes below
Required:
    - type
Optional:
    - deletion_policy
    - description
    - display_name
    - enabled
    - force_delete
    - labels
    - project
    - user_labels
    - sensitive_labels (block):
        - auth_token (optional)
        - auth_token_wo (optional)
        - auth_token_wo_version (optional)
        - password (optional)
        - password_wo (optional)
        - password_wo_version (optional)
        - service_key (optional)
        - service_key_wo (optional)
        - service_key_wo_version (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    type            = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    enabled         = optional(bool)
    force_delete    = optional(bool)
    labels          = optional(map(string))
    project         = optional(string)
    user_labels     = optional(map(string))
    sensitive_labels = optional(object({
      auth_token             = optional(string)
      auth_token_wo          = optional(string)
      auth_token_wo_version  = optional(string)
      password               = optional(string)
      password_wo            = optional(string)
      password_wo_version    = optional(string)
      service_key            = optional(string)
      service_key_wo         = optional(string)
      service_key_wo_version = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


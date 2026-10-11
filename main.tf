resource "google_monitoring_notification_channel" "monitoring_notification_channels" {
  for_each = var.monitoring_notification_channels

  type            = each.value.type
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  enabled         = each.value.enabled
  force_delete    = each.value.force_delete
  labels          = each.value.labels
  project         = each.value.project
  user_labels     = each.value.user_labels

  dynamic "sensitive_labels" {
    for_each = each.value.sensitive_labels != null ? [each.value.sensitive_labels] : []
    content {
      auth_token             = sensitive_labels.value.auth_token
      auth_token_wo          = sensitive_labels.value.auth_token_wo
      auth_token_wo_version  = sensitive_labels.value.auth_token_wo_version
      password               = sensitive_labels.value.password
      password_wo            = sensitive_labels.value.password_wo
      password_wo_version    = sensitive_labels.value.password_wo_version
      service_key            = sensitive_labels.value.service_key
      service_key_wo         = sensitive_labels.value.service_key_wo
      service_key_wo_version = sensitive_labels.value.service_key_wo_version
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


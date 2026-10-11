output "monitoring_notification_channels_id" {
  description = "Map of id values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no id are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_notification_channels_deletion_policy" {
  description = "Map of deletion_policy values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no deletion_policy are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "monitoring_notification_channels_description" {
  description = "Map of description values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no description are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.description if v.description != null && length(v.description) > 0 }
}
output "monitoring_notification_channels_display_name" {
  description = "Map of display_name values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no display_name are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "monitoring_notification_channels_enabled" {
  description = "Map of enabled values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no enabled are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.enabled if v.enabled != null }
}
output "monitoring_notification_channels_force_delete" {
  description = "Map of force_delete values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no force_delete are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.force_delete if v.force_delete != null }
}
output "monitoring_notification_channels_labels" {
  description = "Map of labels values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no labels are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "monitoring_notification_channels_name" {
  description = "Map of name values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no name are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitoring_notification_channels_project" {
  description = "Map of project values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no project are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.project if v.project != null && length(v.project) > 0 }
}
output "monitoring_notification_channels_sensitive_labels" {
  description = "Map of sensitive_labels values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no sensitive_labels are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => one(v.sensitive_labels) if v.sensitive_labels != null && length(v.sensitive_labels) > 0 }
  sensitive   = true
}
output "monitoring_notification_channels_type" {
  description = "Map of type values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no type are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.type if v.type != null && length(v.type) > 0 }
}
output "monitoring_notification_channels_user_labels" {
  description = "Map of user_labels values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no user_labels are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.user_labels if v.user_labels != null && length(v.user_labels) > 0 }
}
output "monitoring_notification_channels_verification_status" {
  description = "Map of verification_status values across all monitoring_notification_channels, keyed the same as var.monitoring_notification_channels except keys with no verification_status are omitted"
  value       = { for k, v in google_monitoring_notification_channel.monitoring_notification_channels : k => v.verification_status if v.verification_status != null && length(v.verification_status) > 0 }
}


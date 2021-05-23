output "secret_name" {
  value       = google_secret_manager_secret.secret_manager.secret_id
  description = "The id of the secret manager. Format: projects/{{project}}/secrets/{{secret_id}}"
}

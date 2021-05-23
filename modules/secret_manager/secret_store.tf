locals {
  member_policy_pairs = var.secret_manager_iam == null ? [] : flatten([
    for role, users in var.secret_manager_iam : [
      for user in users : {
        role = role
        user = user
      }
    ]
  ])
}

resource "google_secret_manager_secret" "secret_manager" {
  project   = var.project_id
  secret_id = "${var.secret_id}-${var.environment}"

  replication {

    user_managed {
      replicas {
        location = var.region
      }
    }
  }

}

resource "google_secret_manager_secret_iam_member" "secret_manager_secret_iam_members" {
  for_each   = { for obj in local.member_policy_pairs : "${obj.role}_${obj.user}" => obj }
  project    = google_secret_manager_secret.secret_manager.project
  secret_id  = google_secret_manager_secret.secret_manager.secret_id
  role       = "roles/${each.value.role}"
  member     = "serviceAccount:${each.value.user}"
  depends_on = [google_secret_manager_secret.secret_manager]
}

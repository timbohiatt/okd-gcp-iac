resource "google_service_account" "os-service" {
  project      = var.project_id
  account_id   = "${var.prefix}-os-svc"
  display_name = "Openshift Cluster"
}

resource "google_project_iam_member" "service_account_log_writer" {
  project = var.project_id
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${google_service_account.os-service.email}"
}

resource "google_project_iam_member" "service_account_metric_writer" {
  project = var.project_id
  role    = "roles/monitoring.metricWriter"
  member  = "serviceAccount:${google_service_account.os-service.email}"
}

resource "google_project_iam_member" "service_account_monitoring_viewer" {
  project = var.project_id
  role    = "roles/monitoring.viewer"
  member  = "serviceAccount:${google_service_account.os-service.email}"
}

resource "google_project_iam_member" "service_account_owner" {
  project = var.project_id
  role    = "roles/owner"
  member  = "serviceAccount:${google_service_account.os-service.email}"
}

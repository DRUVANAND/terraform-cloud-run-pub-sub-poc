resource "google_pubsub_topic" "cloud_run_topic" {
  name = var.topic_name
}

resource "google_pubsub_subscription" "cloud_run_subscription" {
  name  = var.subscription_name
  topic = google_pubsub_topic.cloud_run_topic.name
}

resource "google_cloud_run_service" "hello_world_service" {
  name     = var.service_name
  location = var.region

  template {
    spec {
      containers {
        image = var.image_name
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  depends_on = [
    google_pubsub_subscription.cloud_run_subscription,
  ]
}


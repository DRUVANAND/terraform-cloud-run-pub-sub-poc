variable "project_id" {
  description = "The ID of the Google Cloud project."
}

variable "region" {
  description = "The region in which to deploy the Cloud Run service."
}

variable "zone" {
  description = "The zone in which to deploy the Cloud Run service."
}

variable "topic_name" {
  description = "The name of the Pub/Sub topic to create."
}

variable "subscription_name" {
  description = "The name of the Pub/Sub subscription to create."
}

variable "service_name" {
  description = "The name of the Cloud Run service to create."
}

variable "image_name" {
  description = "The name and tag of the Docker image to deploy to Cloud Run."
}
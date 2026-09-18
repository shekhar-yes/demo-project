resource "google_storage_bucket" "shiv0019" {

  name = "shiv0019"

  location = "ASIA-SOUTH1"

  force_destroy = false

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}

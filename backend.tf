terraform {
  backend "gcs" {
    bucket = "dbcoworks-demo"
    prefix = "terraform/demo-project"
  }
}

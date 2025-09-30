resource "random_pet" "suffix" {
  length = 2
}

resource "aws_s3_bucket" "sanity" {
  bucket = "cloud-reliability-suite-${random_pet.suffix.id}"
}

resource "aws_s3_bucket" "lusd" {
  bucket = var.bucket_name
  force_destroy	= true

  tags = {
    Name        = "${var.stage_name}_${var.default_region}_${var.bucket_name}"
  }
}

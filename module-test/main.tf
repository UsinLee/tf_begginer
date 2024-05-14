module "module-test" {
  source	= "./_modules"
  stage_name	= "lusd"
  bucket_name	= "terraform-module-test-bucket-lus"
}

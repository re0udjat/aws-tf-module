locals {

}

resource "aws_lambda_function" "this" {
  # Required arguments

  # Deployment method arguments
  package_type = var.package_type
  filename     = var.package_type == "Zip" && !var.is_upload_s3 ? var.filename : null

  s3_bucket         = var.package_type == "Zip" && var.is_upload_s3 ? var.s3_bucket : null
  s3_key            = var.s3_bucket != null ? var.s3_key : null
  s3_object_version = var.s3_key != null ? var.s3_object_version : null

  image_uri = var.package_type != "Zip" ? var.image_uri : null
  image_config {
    command           = var.image_uri != null ? var.command : null
    entry_point       = var.image_uri != null ? var.entry_point : null
    working_directory = var.image_uri != null ? var.working_directory : null
  }

  # General configuration arguments
  description = var.description
  memory_size = var.memory_size
  timeout     = var.timeout
  ephemeral_storage {
    size = var.ephemeral_storage_size
  }

  # Code properties arguments
  source_code_hash = var.source_code_hash

  # Environment arguments
  environment {
    variables = var.env_vars
  }

  # Tags arguments
  tags = var.tags

  # Runtime arguments
  runtime       = var.runtime
  handler       = var.handler
  architectures = var.architectures

  # Layers arguments
  layers = var.layers
}
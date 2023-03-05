# Deployment method variables
variable "package_type" {
  description = "(Lambda Optional Argument) Lambda deployment package type: Zip (default) / Image."
  type        = string
}

variable "is_upload_s3" {
  description = "(Lambda Optional Argument) Zip file will be upload to S3 or not."
  type        = bool
  default     = false
}

variable "filename" {
  description = "(Lambda Optional Argument) Path to the function's deployment package within the local filesystem."
  type        = string
  default     = null
}

variable "s3_bucket" {
  description = "(Lambda Optional Argument) S3 bucket location containing the function's deployment package."
  type        = string
  default     = null
}

variable "s3_key" {
  description = "(Lambda Optional Argument) S3 key of an object containing the function's deployment package."
  type        = string
  default     = null
}

variable "s3_object_version" {
  description = "(Lambda Optional Argument) Object version containing the function's deployment package."
  type        = string
  default     = null
}

variable "image_uri" {
  description = "(Lambda Optional Argument) ECR image URI containing the function's deployment package."
  type        = string
  default     = null
}

variable "command" {
  description = "(Lambda Optional Argument) Parameters that you want to pass in with entry_point."
  type        = string
}

variable "entry_point" {
  description = "(Lambda Optional Argument) Entry point to your application, which is typically the location of the runtime executable."
  type        = string
}

variable "working_directory" {
  description = "(Lambda Optional Argument) Working directory."
  type        = string
}

# General configuration variables
variable "description" {
  description = "(Lambda Optional Argument) Description of what your Lambda Function does."
  type        = string
}

variable "memory_size" {
  description = "(Lambda Optional Argument) Amount of memory in MB your Lambda Function can use at runtime."
  type        = number
}

variable "ephemeral_storage_size" {
  description = "(Lambda Optional Argument) Amount of memory in MB your Lambda Function can use at runtime."
  type        = number
}

variable "timeout" {
  description = "(Lambda Optional Argument) Amount of memory in MB your Lambda Function can use at runtime."
  type        = number
}

# Code properties variables
variable "source_code_hash" {
  description = "(Lambda Optional Argument) Used to trigger updates code for Lambda Function."
  type        = string
}

# Environment variables
variable "env_vars" {
  description = "(Lambda Optional Argument) Map of environment variables that are accessible from the function code during execution."
  type        = list(string)
}

# Tags variables
variable "tags" {
  description = "(Lambda Optional Argument) Map of environment variables that are accessible from the function code during execution."
  type        = list(string)
}

# Runtime variables
variable "runtime" {
  description = "(Lambda Optional Argument) Identifier of the function's runtime."
  type        = string
}

variable "handler" {
  description = "(Lambda Optional Argument) Function entrypoint in your code."
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "architectures" {
  description = "(Lambda Optional Argument) Instruction set architecture for your Lambda function."
  type        = list(string)
  default     = ["x86_64"]
}

# Layers variables
variable "layers" {
  description = "(Lambda Optional Argument) List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function."
  type        = list(string)
}
variable "project_id" {
  description = "(Required) The ID of the project where the secret store will be created."
  type        = string
}

variable "region" {
  description = "(Required) Region of secret manager."
  type        = string
}


variable "secret_id" {
  description = "(Required) The secret ID."
}


variable "environment" {
  description = "(Optinal) The environment where the secret store will be created."
  default     = ""
}


variable "description" {
  description = "(Optional) Description of the secret store."
  type        = string
  default     = null
}

variable "secret_manager_iam" {
  description = "IAM members in {ROLE => [MEMBERS]} format."
  default     = null

}

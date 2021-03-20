variable "heroku_app_region" {
  description = "The main app region"
}

variable "heroku_app_name" {
  description = "The main app name"
}

variable "heroku_account_email" {
  description = "The email of Heroku account"
}

variable "heroku_api_key" {
  description = "The API key of Heroku account"
}

variable "heroku_app_buildpacks" {
  description = "Heroku build packs"
}

# Addons variable
variable "heroku_database" {
  description = "Heroku database plan"
}

variable "heroku_redis" {
  description = "Heroku redis plan"
}

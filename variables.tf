variable "heroku_app_region" {
  description = "The region where the dyno located"
}

variable "heroku_app_name" {
  description = "The name of application"
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

# Addon variables
variable "heroku_database" {
  description = "Heroku Database plan"
}

variable "heroku_redis" {
  description = "Heroku Redis plan"
}

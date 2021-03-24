terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "4.1.0"
    }
  }
}

provider "heroku" {
  email   = var.heroku_account_email
  api_key = var.heroku_api_key
}

resource "heroku_app" "production" {
  name   = var.heroku_app_name
  region = var.heroku_app_region

  config_vars = {
    AVAILABLE_LOCALES     = "en"
    AWS_ACCESS_KEY_ID     = ""
    AWS_S3_BUCKET_NAME    = ""
    AWS_S3_REGION         = ""
    AWS_SECRET_ACCESS_KEY = ""
    AWS_STORAGE_ENABLED   = ""
    #DATABASE_URL = "" # attach in addons.tf
    DEFAULT_LOCALE           = "en"
    FALLBACK_LOCALES         = "en"
    LANG                     = "en_US.UTF-8"
    MAILER_DEFAULT_HOST      = "localhost"
    MAILER_DEFAULT_PORT      = "3000"
    MAILER_SENDER            = ""
    RACK_ENV                 = "production"
    RAILS_ENV                = "production"
    RAILS_LOG_TO_STDOUT      = "enabled"
    RAILS_SERVE_STATIC_FILES = "enabled"
    SECRET_KEY_BASE          = ""
  }

  buildpacks = var.heroku_app_buildpacks
}

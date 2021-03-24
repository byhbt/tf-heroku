# Database 
resource "heroku_addon" "database" {
  app  = heroku_app.production.name
  plan = "heroku-postgresql:hobby-dev"
}

data "heroku_app" "production" {
  name = heroku_app.production.name
  depends_on = [
    heroku_addon.database
  ]
}

resource "heroku_app_config_association" "database" {
  app_id = heroku_app.production.id
  sensitive_vars = {
    DATABASE_URL = data.heroku_app.production.config_vars.DATABASE_URL
  }
}

# Redis 
resource "heroku_addon" "redis" {
  app  = heroku_app.production.name
  plan = "heroku-redis:hobby-dev"
}

data "heroku_app" "redis_production" {
  name = heroku_app.production.name
  depends_on = [
    heroku_addon.redis
  ]
}

resource "heroku_app_config_association" "redis" {
  app_id = heroku_app.production.id
  sensitive_vars = {
    REDIS_URL = data.heroku_app.redis_production.config_vars.REDIS_URL
  }
}


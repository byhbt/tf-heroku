resource "heroku_addon" "database" {
  app  = heroku_app.default.name
  plan = var.heroku_database
}

resource "heroku_addon_attachment" "database" {
  app_id  = heroku_app.default.id
  addon_id = heroku_addon.database.id
}

resource "heroku_addon" "redis" {
  app  = heroku_app.default.name
  plan = var.heroku_redis
}

resource "heroku_addon_attachment" "redis" {
  app_id  = heroku_app.default.id
  addon_id = heroku_addon.redis.id
}

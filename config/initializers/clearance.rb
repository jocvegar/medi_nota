Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
  config.routes = false
  config.cookie_expiration = lambda { |cookies| 1.year.from_now.utc }
  config.cookie_name = "remember_token"
  config.password_strategy = Clearance::PasswordStrategies::BCrypt
end

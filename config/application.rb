require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sample
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.default_locale = :ja

    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      port:                 587,
      address:              'smtp.gmail.com',
      domain:               'smtp.gmail.com',
      user_name:            ENV["SMTP_USER"],
      password:             ENV["SMTP_PASS"],
      authentication:       'login',
      enable_starttls_auto: true
    }

    config.active_job.queue_adapter = :sidekiq
    config.active_storage.service = :amazon
  end
end

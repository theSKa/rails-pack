require_relative 'boot'

# require 'rails/all'

require 'rails'
require 'active_record/railtie'
require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'action_mailer/railtie'
require 'active_job/railtie'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

require 'letter_opener' if Rails.env.development?

module RailsPack
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1


    config.api_only = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Use Rack Attack
    config.middleware.use Rack::Attack

    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*',
                 :headers => :any,
                 :expose => %w(access-token expiry token-type uid client),
                 :methods => [:get, :post, :options, :delete, :put]
      end
    end

  end
end

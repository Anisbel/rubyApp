require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
#Paperclip.options[:command_path] = 'C:/Progra~1/ImageM~1'
#Paperclip.options[:command_path] = "/usr/local/bin/identify"
module AnisRateMe
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

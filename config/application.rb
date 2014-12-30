require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Okamagroup
  class Application < Rails::Application
    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts', 'jednotka', 'font-awesome')
    config.assets.precompile += %w( .svg .eot .woff .ttf )
  end
end

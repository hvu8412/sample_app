require_relative "boot"
require 'carrierwave/orm/activerecord'
require "rails/all"

Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.load_defaults 6.1
    config.assets.initialize_on_precompile = false
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end

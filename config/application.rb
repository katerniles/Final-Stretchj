require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
module Katesapp
  class Application < Rails::Application
#    config.active_record.raise_in_transactional_callbacks = true
#    config.assets.initialize_on_precompile = false
    config.cache_store = :redis_store, 'redis://localhost:6379/0/cache'

  end
end

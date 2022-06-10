# frozen_string_literal: true

require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret 'e1552bedb27e6fdaf548a1f441c58f0218b99e7eda84e9c31ef6d881bec4292d'

  url_format '/media/:job/:name'

  datastore :file,
            root_path: Rails.root.join('public/system/dragonfly', Rails.env),
            server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end

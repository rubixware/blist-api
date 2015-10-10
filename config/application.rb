require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'rack'
require 'rack/cors'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlistApi
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths << Rails.root.join('lib')
    ActionMailer::Base.smtp_settings = {
      :user_name => "#{Figaro.env.mail_username}",
      :password =>  "#{Figaro.env.mail_password}",
      :domain =>    "#{Figaro.env.mail_domain}",
      :address =>   "#{Figaro.env.mail_address}",
      :port =>      "#{Figaro.env.mail_port}",
      :authentication => :plain,
      :enable_starttls_auto => true
    }
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*',
          :headers => :any,
          :methods => [:get, :post, :delete, :put, :patch, :options, :head]
      end
    end
  end
end

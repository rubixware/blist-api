source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# PG
gem 'pg', '~> 0.18.2'
# AMS
gem 'active_model_serializers', '~> 0.9.3'
# ENV VARS
gem 'figaro', '~> 1.1.1'
# all hail puma app server
gem 'puma', '~> 2.11.3'
# allow cross domain
gem 'rack-cors', :require => 'rack/cors'
# images!
gem 'carrierwave', '~> 0.10.0'
#auth, lol
gem 'devise'
group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end
#testing!
group :test do
  gem "rspec-rails", "~> 3.0"
  gem "factory_girl_rails"
  gem 'ffaker'
  gem 'faker'
  gem 'shoulda-matchers'
end

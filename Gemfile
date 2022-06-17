# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "active_model_serializers"
gem "bootsnap", ">= 1.4.4", require: false
gem "devise"
gem "digest", "3.0"
gem "faker"
gem "google_drive"
gem "jwt"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rack-cors"
gem "rails", "~> 7.0"
gem "strscan", "3.0.1"

group :development, :test do
  gem "byebug"
  gem "factory_bot_rails"
  gem "rspec-rails", "~> 6.0.0.rc1"
  gem "shoulda"
end

group :development do
  gem "listen", "~> 3.3"
  gem "spring"
end

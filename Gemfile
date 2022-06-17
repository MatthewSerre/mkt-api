# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "active_model_serializers"
gem "bootsnap", ">= 1.4.4", require: false
gem "google_drive"
gem "jwt"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rack-cors"
gem "rails", "~> 7.0"

group :development, :test do
  gem "byebug"
end

group :development do
  gem "listen", "~> 3.3"
  gem "spring"
end

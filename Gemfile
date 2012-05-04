source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'haml-rails'
gem 'bootstrap_forms'
gem 'devise'
gem 'cancan'
gem 'thin'
gem 'bootstrap-will_paginate'
gem 'gotcha', :git => 'git://github.com/brownjohnf/gotcha.git'

# test on sqlite.
group :test do
  gem 'sqlite3'
end

# develop locally on sqlite. Heroku advises against this, but i've found it a pain in the ass to deal with different dbs across development machines.
group :development do
  gem 'sqlite3'
  gem 'foreman'
end

# use Postgres for production/Heroku.
group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass'
  gem 'bootswatch-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

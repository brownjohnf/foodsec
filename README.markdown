# PC|SN Food Security App

It's a basic, functional app with Devise, CanCan and a basic role system already implemented, built on my jack-app-base.

# Requirements

This has different answers. Nothing aside from ruby/rails is *technically* required, but the app is designed to run as follows.

* Rails 3.2.3
* Bundler
* Heroku production server
* Mailgun heroku addon

# Installation

Should be really easy.

    $ git clone http://github.com/brownjohnf/foodsec.git
    $ bundle install --without production
    $ cp config/initializers/dev_env.rb.sample config/initializers/dev_env.rb
    $ vi config/initializers/dev_env.rb
    $ bundle exec rake db:create
    $ bundle exec rake db:migrate
    $ bundle exec rake db:seed
    $ foreman start

You can skip the database seed; it adds a bunch of Senegal-specific data and an admin user (admin@example.com, password: password).

For production, you'll need to add the Mailgun addon to your app, and set all the config vars found in `config/initializers/dev_env.rb.sample` for your heroku environment.

# Theory

In its partnership with USAID/Feed the Future, PC|SN is accumulating a lot of data, and it's hard to manipulate, organize, access, and share. This app aims to tackle some of these problems.

# Jack App Base: What is it?

It's a basic, functional app with Devise, CanCan and a basic role system already implemented.

# Requirements

This has different answers. Nothing aside from ruby is *technically* required, but the app is designed to run as follows.

* Rails 3.2.3
* Bundler
* Heroku production server
* Mailgun heroku addon

# Installation

Should be really easy.

    $ git clone http://github.com/brownjohnf/jack-app-base.git
    $ bundle install --without production
    $ cp config/initializers/dev_env.rb.sample config/initializers/dev_env.rb
    $ vi config/initializers/dev_env.rb
    $ bundle exec rake db:migrate
    $ foreman start

For production, you'll need to add the Mailgun addon to your app, and set all the config vars found in `config/initializers/dev_env.rb.sample` for your heroku environment.

# Theory

The idea behind this is to have an out-of-the-box functional, secured app, ready to take in any direction. It intentionally has no demo resources or styling (aside from bootswatch). I wanted to have nothing which would need to be removed for any app.

First and foremost, I built this for myself. If you find it useful, great. If not, I'd love to hear your critiques, but you should use something else if you're unhappy.

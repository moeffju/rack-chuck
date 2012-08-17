# Please use the fork at [delicious-development/rack-chuck](https://github.com/delicious-development/rack-chuck)!
# This fork is unmaintained!

# Rack::Chuck

The Rack Chuck middleware adds chuck norris facts in the headers of your rack-based web application.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-chuck', github: 'delicious-development/rack-chuck'

And then execute:

    $ bundle

## Usage

In config/application.rb add:

    config.middleware.use Rack::Chuck

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

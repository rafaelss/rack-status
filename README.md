# Rack::Status

Rack middleware that respond to /status requests and return 200 as status code and "OK" as response body. Useful for check if application is up and running

## Installation

Add this line to your application's Gemfile:

    gem 'rack-status', :require => "rack/status"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-status

## Usage

Put it on your config.ru (even if it's a rails app)

    use Rack::Status
    run MyApp

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

See LICENSE file

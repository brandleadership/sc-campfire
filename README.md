# Sc::Campfire

Add this too your screenconcept project to enable campfire deployment notifications by default.

## Installation

Add this line to your application's Gemfile:

    gem 'sc-campfire'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sc-campfire

## Usage

If you want to add additional rooms to be notified when a deployment happens, add some configuration.
Create an initializer for your basecamp config in config/initializers, `sc_campfire.rb`:

    Sc::Campfire.config do |config|
      config.rooms += [campfire room id]
      config.project_name = 'Happy Feet' # defaults to your application name
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

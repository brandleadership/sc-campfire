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


Create an initializer for your basecamp config in config/initializers, `sc_campfire.rb` and configure it:

    Sc::Campfire.config do |config|
      config.username = 'some hash'
      config.password = 'some password'

      # optional

      config.rooms += [campfire room id] # has r/deployments as default
      config.project_name = 'Happy Feet' # defaults to your application name
    end

### Notifiying your campfire room
Add this to your deployment task:

    if Rails.env.production?
      puts 'Notifiying campfire'
      Rake::Task["sc:campfire:notify"].invoke
    end

Or call it with rake

    $ RAILS_ENV=your_env rake sc:campfire:notify

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

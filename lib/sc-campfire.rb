require 'sc-campfire/campfire'
require 'sc-campfire/room'

module Sc
  module Campfire
    class Railtie < Rails::Railtie
      rake_tasks do
        Dir[File.join(File.dirname(__FILE__),'tasks/*.rake')].each { |f| load f }
      end
    end

    def self.config
      @config ||= OpenStruct.new(
        :rooms => [default_room],
        :project_name => default_project_name,
        :username => '',
        :password => ''
      )
      yield @config if block_given?
      Campfire.basic_auth @config.username, @config.password
      @config
    end

    private

    def self.default_project_name
      'configure your project name'
      Rails.application.class.to_s.underscore.dasherize
    end

    def self.default_room
      521447 # r/deployments
    end
  end
end

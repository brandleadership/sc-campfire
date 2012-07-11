require 'sc-campfire/campfire'
require 'sc-campfire/room'

module Sc
  module Campfire
    class Railtie < Rails::Railtie
      rake_tasks do
        Dir[File.join(File.dirname(__FILE__),'tasks/*.rake')].each { |f| load f }
      end
    end
  end
end

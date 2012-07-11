require 'ostruct'
require 'httparty'

module Sc
  module Campfire
    class Campfire
      include HTTParty

      base_uri   'https://screenconcept.campfirenow.com'
      headers    'Content-Type' => 'application/xml'

      def self.rooms
        Campfire.get('/rooms.xml')["rooms"]
      end

      def self.room(room_id)
        Room.new(room_id)
      end

      def self.user(id)
        Campfire.get("/users/#{id}.xml")["user"]
      end
    end
  end
end

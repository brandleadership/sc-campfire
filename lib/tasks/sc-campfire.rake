namespace :sc do
  namespace :campfire do
    desc 'send deployment notification to campfire'
    task :notify do
      Sc::Campfire.config.rooms.each do |room|
        room = Sc::Campfire::Campfire.room(room)
        room.join
        room.message "#{Time.now.strftime("%d.%m.%y @ %T")}: Deployed [#{Sc::Campfire.config.project_name}] ON #{Rails.env.upcase} environment"
      end
    end
  end
end

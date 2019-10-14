require "pry"
require "time"
require_relative './lib/user.rb'
require_relative './lib/event.rb'

def perform
  olymp = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

  User.new("julie@julie.com", 35)
  User.new("jean@jean.com", 23)
  User.new("claude@claude.com", 75)

  #user_1 = User.find_by_email("claude@claude.com")

  #puts "Voici l'age du User trouvé : #{user_1.age}"

  binding.pry
  puts "end of file"
end

perform
require_relative '../config/environment'
require_relative '../lib/command_line_interface'
require 'pry'


# puts "HELLO WORLD"

welcome

preference = " "

character = get_character_from_user

until preference == "yes"

preference = get_preference

character_instance = find_character(character)

character_information(character_instance, preference)

end

require_relative '../config/environment'
require_relative '../lib/command_line_interface'
require 'pry'


# puts "HELLO WORLD"

welcome

user_choice = get_character_from_user

user_preference = get_preference

character_information(user_choice, user_preference)

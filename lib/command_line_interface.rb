
def welcome
  puts "Hello and welcome to Overwatch! Before we can start, we need you to decide which character you'd like to play as."
end


def get_character_from_user
  puts "Please enter a character from this list: 'Ana', 'Bastion','D.Va', 'Genji', 'Junkrat', 'Hanzo', 'Lucio', 'McCree', 'Mei', 'Mercy', 'Pharah', 'Reaper', 'Reaper', 'Roadhog', 'Soldier: 76', 'Symmetra', 'Torbjorn', 'Tracer', 'Widowmaker', 'Winston', 'Zarya'."
  return gets.chomp
end


def get_preference
  puts "what do you want to know? Type 'description', 'role', or 'difficulty.'"
  return gets.chomp
end

def character_information(character, preference)
  binding.pry
  character[preference]
end

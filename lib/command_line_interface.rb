
def welcome
  puts "Hello and welcome to Overwatch!
Before we can start, we need you to decide which character you'd like to play as.
-----------------------------------------"

end


def get_character_from_user
  puts "Please enter a character from this list:
'Ana', 'Bastion','D.Va', 'Genji', 'Junkrat', 'Hanzo', 'Lucio', 'McCree', 'Mei', 'Mercy', 'Pharah', 'Reaper', 'Reaper', 'Roadhog', 'Soldier: 76', 'Symmetra', 'Torbjorn', 'Tracer', 'Widowmaker', 'Winston', 'Zarya'."
  return gets.chomp
end


def get_preference
  puts "what do you want to know?
Type '1: description', '2: role', '3: difficulty,' or type 'yes' to choose this character or 'other' to choose another."
  return gets.chomp
end


def find_character(character)
  Character.find_by_name(character)
end

def character_information(character, pref)
  if pref == "1"
    puts character.description
  elsif pref == "2"
    puts character.role
  elsif pref == "3"
    puts character.difficulty
  elsif pref == "yes"
    puts "character saved"
  elsif pref == "other"
    get_character_from_user
  end
end

def find_characters_played
  Game.all.map {|x| x.character_id}
end

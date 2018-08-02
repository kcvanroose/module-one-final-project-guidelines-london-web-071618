class Character < ActiveRecord::Base
  has_many :games
  has_many :players, through: :games

  # def create_team
  #   character_names = ["D.Va", "Hanzo", "Mei", "Mercy"]
  #   team = []
  #   [0,1,2,3].each do |i|
  #     team << Character.all.find{|character| character.name == character_names[i]}
  #   end
  #   team
  # end

end

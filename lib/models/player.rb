class Player < ActiveRecord::Base
  has_many :games
  has_many :characters, through: :games
end

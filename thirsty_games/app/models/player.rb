require_relative '../../db/config'
require_relative 'game'

class Player < ActiveRecord::Base
  has_many :games, through: :player_games
  has_many :player_games

end

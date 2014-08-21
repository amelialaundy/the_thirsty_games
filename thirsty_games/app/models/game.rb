require_relative '../../db/config'
require_relative 'player'

class Game < ActiveRecord::Base

  has_many :players, through: :player_games
  has_many :player_games

end

require_relative '../../db/config'
require_relative 'game'

class Player < ActiveRecord::Base
	attr_accessor :total_score
  has_many :games, through: :player_games
  has_many :player_games

  def total_scores
    # player_games.inject(0) {|total, player_game| total += player_game.game_score}
    player_games.sum(:game_score)
  end
end

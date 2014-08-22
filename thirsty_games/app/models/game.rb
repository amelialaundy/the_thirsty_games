require_relative '../../db/config'
require_relative 'player'
require_relative 'player_game'

class Game < ActiveRecord::Base

  has_many :players, through: :player_games
  has_many :player_games

  def players_and_scores
      players.each do |player|
        puts "#{player.name}'s score in #{name} is: #{get_game_score(player.id)}"
      end
  end


  def get_game_score(player_id)
    player_games.select {|pg| pg.player_id == player_id}.first.game_score
  #   all_game_scores = player_game.game_score
  #   @game_score = all_game_scores.where("game_id = #{game_id} and player_id = #{player_id}")
  end
end

# game = Game.new
# Game.players_and_scores(3)

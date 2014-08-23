require_relative '../../db/config'
require_relative 'game'
require_relative 'player'

class PlayerGame < ActiveRecord::Base
	attr_accessor :game_score
	belongs_to :game
	belongs_to :player
end

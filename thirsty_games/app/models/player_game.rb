require_relative '../../db/config'
require_relative 'game'
require_relative 'player'

class PlayerGame < ActiveRecord::Base
	belongs_to :game
	belongs_to :player
end

require_relative '../app/models/game'

GAMES_DATA = ['Articulate', 'Twister', 'Cranium', 'Guess Who', 'Scattergories', 'Blockus']

module GamesImporter
  def self.import
    GAMES_DATA.each do |game_name|
      Game.create!(name: game_name)
    end
  end
end

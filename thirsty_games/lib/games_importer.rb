require_relative '../app/models/game'

GAMES_DATA = ['scrabble', 'connect_4','twister', 'monopoly',
              'mastermind', 'risk', 'drunken_brawling']

module GamesImporter
  def self.import
    GAMES_DATA.each do |game_name|
      Game.create!(name: game_name)
    end
  end
end

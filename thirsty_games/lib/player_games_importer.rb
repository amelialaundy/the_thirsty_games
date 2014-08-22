require_relative '../app/models/player_game'


module PlayerGamesImporter
  def self.import
    Game.all.each do |game|
      Player.all.each do |player|

        PlayerGame.create!(player_id: player.id, game_id: game.id, game_score: rand(100))
      end
    end
  end
end


#####################FUNKY MANY TO MANY######################
        # player.games << game
        # game.players << player

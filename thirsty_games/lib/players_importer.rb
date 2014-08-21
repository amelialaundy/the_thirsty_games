require_relative '../app/models/player'

PLAYER_DATA = ['Adam','Amelia','Grace','Linton','Dan',
                'Jess','Juliet','Karen','Steve']

module PlayersImporter
  def self.import
    PLAYER_DATA.each do |player_name|
      Player.create!(name: player_name)
    end
  end
end

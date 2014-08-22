require_relative '../app/models/player'

PLAYER_DATA = ['Adam','Amelia','Grace','Linden','Dan',
                'Jess','Juliet','Karen','Steve', 'Jaime','Sam', 'Darcy','Richard','Jasmin','Josh','Rohan']

module PlayersImporter
  def self.import
    PLAYER_DATA.each do |player_name|
      Player.create!(name: player_name)
    end
  end
end

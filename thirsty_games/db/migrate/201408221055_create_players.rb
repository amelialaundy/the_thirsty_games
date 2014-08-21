require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |s|
    	s.string :name
    	s.integer :total_score, default: 0
    	s.timestamps
    end
  end
end

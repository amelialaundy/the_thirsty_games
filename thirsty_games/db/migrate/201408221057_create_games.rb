require_relative '../config'


class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |s|
    	s.string :name
    	s.timestamps
    end
  end
end

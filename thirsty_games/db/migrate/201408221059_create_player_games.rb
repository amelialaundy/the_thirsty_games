require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreatePlayerGames < ActiveRecord::Migration
  def change
    # add_column :students, :teacher_id, :integer
    # create_join_table :teachers, :students do |t|
    #     t.index [:teacher_id, :student_id]
    #     t.index [:student_id, :teacher_id]
    # end

    create_table :player_games do |t|
        t.integer :player_id
        t.integer :game_id
        t.integer :game_score, default: 0
    end

  end
end

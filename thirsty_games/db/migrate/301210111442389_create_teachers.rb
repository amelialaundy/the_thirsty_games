require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeachers < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :teachers do |s|
        # s.has_many :students
    	s.string :name
    	s.string :email
    	s.string :phone
    	s.timestamps
    end
  end
end

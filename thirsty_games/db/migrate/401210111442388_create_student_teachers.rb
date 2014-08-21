require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudentTeachers < ActiveRecord::Migration 
  def change
    # add_column :students, :teacher_id, :integer   
    # create_join_table :teachers, :students do |t|
    #     t.index [:teacher_id, :student_id]
    #     t.index [:student_id, :teacher_id]
    # end

    create_table :student_teachers do |t|
        t.integer :teacher_id
        t.integer :student_id

    end

  end
end
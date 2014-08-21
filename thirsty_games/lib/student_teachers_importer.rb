require_relative '../app/models/student_teacher'


module StudentTeachersImporter
  def self.import
    StudentTeacher.transaction do
      54.times do
        attribute_hash = Hash[teacher_id: rand(1..9), student_id: rand(1..54)]
        student_teacher = StudentTeacher.create!(attribute_hash)
      end
    end
  end

 
end
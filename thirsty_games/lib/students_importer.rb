require_relative '../app/models/student'

module StudentsImporter
  def self.import(filename=File.dirname(__FILE__) + "/../db/data/students.csv")
    field_names = nil
    Student.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          # attribute_hash.merge!({teacher_id: rand(1..9)})
          student = Student.create!(attribute_hash)
        end
      end
    end
    # relationships
  end

  # def self.relationships
  #   Student.teacher(2)
  # end

 
end

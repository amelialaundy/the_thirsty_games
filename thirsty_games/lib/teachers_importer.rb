require 'faker'

require_relative '../app/models/teacher'

module TeachersImporter
  def self.import
    field_names = nil
    Teacher.transaction do
      9.times do
       
        attribute_hash = Hash[name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number]
        teacher = Teacher.create!(attribute_hash)
      end
    end
  end
end
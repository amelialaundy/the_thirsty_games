require_relative '../../db/config'
require_relative 'student'

require 'date'

class Teacher < ActiveRecord::Base
	validates :email, :format => { :with => /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
    :multiline => true}
    validates :email, :uniqueness => true
    # validates_numericality_of :phone_valid?, :greater_than => 9
    has_many :students, through: :student_teachers

    def phone_valid?
		phone.gsub(/\D/, "").length 
	end

end

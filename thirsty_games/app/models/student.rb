require_relative '../../db/config'
require_relative 'student'
require 'date'

class Student < ActiveRecord::Base
	validates :email, :format => { :with => /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
    :multiline => true}
    validates :email, :uniqueness => true

    validates_numericality_of :age, :greater_than => 4

    validates_numericality_of :phone_valid?, :greater_than => 9

    has_many :teachers, through: :student_teachers

    # validates :birthday, :confirmation => true,
    # :unless => Proc.new {|a| a.age < 4}

    #  validates :password, :confirmation => true,
    # :unless => Proc.new { |a| a.password.blank? }

 # validates :email, :format => { :with => /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/, :message => "Must be a valid email address", :multiline => true }

	def name
		first_name + " " + last_name
	end

	def age
		today = Date.today
		birthday
		age = (today - birthday)/365.00
		age.floor
	end

	def phone_valid?
		phone.gsub(/\D/, "").length 
	end

# implement your Student model here
end
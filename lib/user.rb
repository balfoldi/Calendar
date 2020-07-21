
class User

	attr_accessor :email

	attr_accessor :age

	@@user_array = []

	def initialize(email_to_save = nil, age_to_save = nil)
		@email = email_to_save
		@age = age_to_save
		@@user_array << self
	end

	def self.all
		puts @@user_array
	end

	def self.find_by_user_email(ref_email)
		@@user_array.each do |user| 
			(return user) if user.email == ref_email 
		end
		return false
	end
	def self.user_email_exist?(ref_email)
		@@user_array.each do |user| 
			(return true) if user.email == ref_email 
		end
		return false
	end
end
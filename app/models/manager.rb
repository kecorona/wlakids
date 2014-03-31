class Manager < ActiveRecord::Base
	belongs_to :business
  	has_many :members

  	def name
  		"#{first_name} #{last_name}"
	end

end

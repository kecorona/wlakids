class Member < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

	belongs_to :business
	belongs_to :manager
	has_many :sponsors

	def name
	"#{first_name} #{last_name}"
	end

	def to_s
		"#{business}"
	end

	def true_to_s
		"Yes"
	end

	def false_to_s
		"No"
	end
	
end

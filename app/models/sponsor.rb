class Sponsor < ActiveRecord::Base
	validates_presence_of :name, :level, :member_id, :contact_first, :contact_last
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

	belongs_to :member

	def full_name
		"#{contact_first} #{contact_last}"
	end
end

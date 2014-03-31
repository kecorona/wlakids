class Player < ActiveRecord::Base
	validates_presence_of :foursome, :first_name, :last_name, :company, :shirt_size, :rental_clubs, :comments, :dinner_attendance

	
	def player_name
		"#{first_name} #{last_name}"
	end
end

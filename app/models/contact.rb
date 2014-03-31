class Contact < ActiveRecord::Base
	validates_presence_of :type, :first_name, :last_name, :organization
	

end

class AdminUser < ActiveRecord::Base
	devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

	after_create { |admin| admin.send_reset_password_instructions }

	def password_required?
		new_record? ? false : super
	end
end

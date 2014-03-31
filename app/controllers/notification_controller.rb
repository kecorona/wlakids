class NotificationController < ApplicationController
	def create
		@notificaiton = Notification.new

		respond_to do |format|
			if @notification.save
				WelcomeMailer.registration_confirmation(@user).deliver
			else
				format.html { render action: 'new' }
				format.json { render json: @notification.errors, status: :unprocessable_entity }
			end
		end
	end
end

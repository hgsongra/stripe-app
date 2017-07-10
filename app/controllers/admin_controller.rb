class AdminController < ApplicationController
	before_action :check_for_admin

	def check_for_admin
		unless current_user&.is_admin?
			redirect_to root_path, alert: "You must be Admin to access this page."
		end
	end
end

class AdminPanelController < ApplicationController
before_filter :authenticate
	def index
	end

	private

	def authenticate
		redirect_to new_session_path if !signed_in?
	end
end

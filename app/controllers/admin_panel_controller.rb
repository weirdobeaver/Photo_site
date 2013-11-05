class AdminPanelController < ApplicationController
before_filter :authenticate
	def index
		@photo_adds = PhotoAdd.paginate(:page => params[:page], :per_page => 9)
        @photo_add = current_user.photo_adds.build if signed_in?
	end

	private

	def authenticate
		redirect_to new_session_path if !signed_in?
	end
end

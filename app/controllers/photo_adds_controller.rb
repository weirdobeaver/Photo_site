class PhotoAddsController < ApplicationController
before_action :signed_in_user

	def index
	end

	def create
	  @photo_add = current_user.photo_adds.build(photo_add_params)
      if @photo_add.save
        flash[:success] = "Photo Added!"
        redirect_to admin_panel_path
      else
        render admin_panel
      end
	end

	def destroy
	end

	private
	def photo_add_params
      params.require(:photo_add).permit(:content)
    end
end

class PhotoAddsController < ApplicationController
  before_action :signed_in_user, except: [:index]
  before_action :correct_user,   only: :destroy

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
		@photo_add.destroy
    	redirect_to admin_panel_path
	end

	private
	def photo_add_params
      params.require(:photo_add).permit(:content)
    end

    def correct_user
      @photo_add = current_user.photo_adds.find_by(id: params[:id])
      redirect_to admin_panel_path if @photo_add.nil?
    end
end

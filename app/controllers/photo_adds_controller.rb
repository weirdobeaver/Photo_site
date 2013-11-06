class PhotoAddsController < ApplicationController
  before_action :signed_in_user, except: [:index, :show]
  before_action :correct_user,   only: :destroy

	def show
    @photo_add = PhotoAdd.find(params[:id])
	end

  def index
    @photo_adds = PhotoAdd.paginate(:page => params[:page], :per_page => 9)
    @current_page = "/portfolio"
  end


	def create
	  @photo_add = current_user.photo_adds.build(photo_add_params)
    @photo_add.avatar = params[:photo_add][:picture]
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

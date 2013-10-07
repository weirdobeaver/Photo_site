class SessionsController < ApplicationController
	
	def new
	end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
        if user && user.authenticate(params[:session][:password])
        	sign_in user
        	redirect_to admin_panel_path
        else
          flash.now[:error] = 'Invalid email/password combination' # Not quite right!
          render 'new'
    	end
	end

	def destroy
		sign_out
		redirect_to new_session_path
	end

end

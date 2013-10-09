module SessionsHelper
	  def sign_in(user)
	    reset_session
	    session[:current_user_id] = user.id
	    self.current_user = user
	  end

	  def current_user=(user)
      @current_user = user
    end

    def current_user
    	return @current_user if defined?(@current_user)

    	if session[:current_user_id] && (user = User.find(session[:current_user_id]))
    		@current_user = user
    	else
    		nil
    	end
    end

    def signed_in?
      !current_user.nil?
    end

    def sign_out
      self.current_user = nil
      reset_session
    end

    def current_user?(user)
      user == current_user
    end

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

end

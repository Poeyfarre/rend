class ApplicationController < ActionController::Base

    helper_method :current_user
    
    def current_user
      if session[:user_id]
        @current_user = User.find_by(id: session[:user_id])
      else
        @current_user = nil
      end
    end

    def restrict_access
      redirect_to posts_path
    end
end
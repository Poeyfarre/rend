class LoginsController < ApplicationController
    
    def new
        render 'new'
    end

    def create
        user = User.find_by(user_name: login_params[:user_name])
        authenticated = user.try(:authenticate, login_params[:password])
        
        if !authenticated
            flash[:error] = "Username or Password incorrect. "
            redirect_to '/login'
            return
        end

        session[:user_id] = user.id
        redirect_to user_path(user.id)
    end

    def destroy
        reset_session
        redirect_to login_path
    end

    private

    def login_params
        params.permit(:username, :password)
    end
end
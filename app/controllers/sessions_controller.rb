class SessionsController < ApplicationController

    def new 
        @user = User.new
    end

    def create
        @user = User.find_by(email: session_params[:email])
        
        if @user && @user.authenticate(session_params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
           flash[:error] = "Invalid email/password combination"
            render :new
        end
    end

    def destroy 
        session.delete :user_id

        redirect_to login_path
    end

    private

    def session_params
        params.require(:user).permit(:password, :email)
    end
end

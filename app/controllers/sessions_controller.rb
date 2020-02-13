class SessionsController < ApplicationController

    def new 
        @user = User.new
    end

    def create
        # byebug
        @user = User.find_by(email: session_params[:email])
        # byebug
        if @user && @user.authenticate(session_params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
           flash[:error] = "Enter email and password"
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

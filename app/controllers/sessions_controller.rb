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
           
            render :new, notice => "Can't do that"
        end
    end

    def destroy 
        session.delete :user_id
    end

    private

    def session_params
        params.require(:user).permit(:password, :email)
    end
end

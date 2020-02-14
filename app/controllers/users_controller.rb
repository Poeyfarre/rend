class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @current_user = current_user
        # current_user
        # byebug
    end

    def new 
        @user = User.new 
    end

    def create
        @user = User.new(user_params)
        user_id = session[:user_id]
        if @user.save
          redirect_to @user
        else
          render 'new'
        end
    end

    def edit 
        @user = current_user
    end

    def update
        @user = current_user
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end
        
    def destroy
        @user = current_user
        @user.destroy
        redirect_to users_path
    end


private

    def user_params 
        params.require(:user).permit(:name, :username, :email, :district, :party, :password)
    end
end



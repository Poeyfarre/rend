class UsersController < ApplicationController

    

    def index 
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new 
        @user = User.new 
    end

    def create
        @user = User.new(params[:user])
        if @user.save
          redirect_to root_url, :notice => "Signed up!"
        else
          render "new"
        end
      end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end
        
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end


private
    def user_params 
        params.require(:user).permit(:name, :username, :email, :district, :party)
    end
end


